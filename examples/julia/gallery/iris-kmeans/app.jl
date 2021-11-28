#=
Dash port of Shiny iris k-means example:

https://shiny.rstudio.com/gallery/kmeans-example.html =#

using Dash, DashBootstrapComponents
using RDatasets, DataFrames, Clustering

iris = dataset("datasets", "iris");
select!(iris, Not(:Species));

app = dash(external_stylesheets = [dbc_themes.BOOTSTRAP]);

controls = dbc_card(
    [
        html_div(id = "temp-div"),
        dbc_formgroup([
            dbc_label("X variable"),
            dcc_dropdown(
                id = "x-variable",
                options = [Dict("label" => col, "value" => col) for col in names(iris)],
                value = "SepalLength",
            ),
        ]),
        dbc_formgroup([
            dbc_label("Y variable"),
            dcc_dropdown(
                id = "y-variable",
                options = [Dict("label" => col, "value" => col) for col in names(iris)],
                value = "SepalWidth",
            ),
        ]),
        dbc_formgroup([
            dbc_label("Cluster count"),
            dbc_input(id = "cluster-count", type = "number", value = 3),
        ]),
    ],
    body = true,
);

app.layout = dbc_container(
    [
        html_h1("Iris k-means clustering"),
        html_hr(),
        dbc_row(
            [dbc_col(controls, md = 4), dbc_col(dcc_graph(id = "cluster-graph"), md = 8)],
            align = "center",
        ),
    ],
    fluid = true,
);


callback!(
    app,
    Output("cluster-graph", "figure"),
    Input("x-variable", "value"),
    Input("y-variable", "value"),
    Input("cluster-count", "value"),
) do x, y, n_clusters

    iris_tmp = iris[:, [x, y]]
    features = transpose(collect(Matrix(iris_tmp)))
    # minimal input validation, make sure there's at least one cluster
    km = kmeans(features, max(n_clusters, 1))

    iris_tmp[:, "cluster"] = assignments(km)

    centres = transpose(km.centers)

    data = [
        (
            x = filter(:cluster => ==(c), iris_tmp)[:, x],
            y = filter(:cluster => ==(c), iris_tmp)[:, y],
            mode = "markers",
            marker = (size = 8,),
            name = "Cluster $c",
        ) for c = 1:n_clusters
    ]


    data = [
        data
        (
            x = centres[:, 1],
            y = centres[:, 2],
            mode = "markers",
            marker = (color = "#000", size = 12, symbol = "diamond"),
            name = "Cluster centers",
        )
    ]

    layout = (xaxis = (title = x,), yaxis = (title = y,))

    return (data = data, layout = layout)
end;


# make sure that x and y values can't be the same variable
function filter_options(v)
    #=
    Disable option v =#
    return [
        Dict("label" => col, "value" => col, "disabled" => col == v) for col in names(iris)
    ]
end;


# functionality is the same for both dropdowns, so we reuse filter_options
callback!(app, Output("x-variable", "options"), Input("y-variable", "value")) do v
    return filter_options(v)
end;

callback!(app, Output("y-variable", "options"), Input("x-variable", "value")) do v
    return filter_options(v)
end;


run_server(app, "0.0.0.0", 8888, debug = true);
