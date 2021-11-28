using DashBootstrapComponents

table_header = [html_thead(html_tr([html_th("First Name"), html_th("Last Name")]))];

row1 = html_tr([html_td("Arthur"), html_td("Dent")]);
row2 = html_tr([html_td("Ford"), html_td("Prefect")]);
row3 = html_tr([html_td("Zaphod"), html_td("Beeblebrox")]);
row4 = html_tr([html_td("Trillian"), html_td("Astra")]);

table_body = [html_tbody([row1, row2, row3, row4])];

table = dbc_table([table_header; table_body], bordered = true);
