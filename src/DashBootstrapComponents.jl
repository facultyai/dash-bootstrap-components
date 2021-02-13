
module DashBootstrapComponents
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.11.3"

include("dbc_alert.jl")
include("dbc_badge.jl")
include("dbc_button.jl")
include("dbc_buttongroup.jl")
include("dbc_collapse.jl")
include("dbc_fade.jl")
include("dbc_jumbotron.jl")
include("dbc_label.jl")
include("dbc_progress.jl")
include("dbc_spinner.jl")
include("dbc_table.jl")
include("dbc_toast.jl")
include("dbc_tooltip.jl")
include("dbc_card.jl")
include("dbc_cardbody.jl")
include("dbc_cardcolumns.jl")
include("dbc_carddeck.jl")
include("dbc_cardfooter.jl")
include("dbc_cardgroup.jl")
include("dbc_cardheader.jl")
include("dbc_cardimg.jl")
include("dbc_cardimgoverlay.jl")
include("dbc_cardlink.jl")
include("dbc_dropdownmenu.jl")
include("dbc_dropdownmenuitem.jl")
include("dbc_form.jl")
include("dbc_formfeedback.jl")
include("dbc_formgroup.jl")
include("dbc_formtext.jl")
include("dbc_checkbox.jl")
include("dbc_checklist.jl")
include("dbc_input.jl")
include("dbc_inputgroup.jl")
include("dbc_inputgroupaddon.jl")
include("dbc_inputgrouptext.jl")
include("dbc_radiobutton.jl")
include("dbc_radioitems.jl")
include("dbc_select.jl")
include("dbc_textarea.jl")
include("dbc_col.jl")
include("dbc_container.jl")
include("dbc_row.jl")
include("dbc_listgroup.jl")
include("dbc_listgroupitem.jl")
include("dbc_listgroupitemheading.jl")
include("dbc_listgroupitemtext.jl")
include("dbc_modal.jl")
include("dbc_modalbody.jl")
include("dbc_modalfooter.jl")
include("dbc_modalheader.jl")
include("dbc_nav.jl")
include("dbc_navitem.jl")
include("dbc_navlink.jl")
include("dbc_navbar.jl")
include("dbc_navbarbrand.jl")
include("dbc_navbarsimple.jl")
include("dbc_navbartoggler.jl")
include("dbc_popover.jl")
include("dbc_popoverbody.jl")
include("dbc_popoverheader.jl")
include("dbc_tab.jl")
include("dbc_tabs.jl")
include("themes.jl")


function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_bootstrap_components",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "_components/dash_bootstrap_components.min.js",
    external_url = "https://unpkg.com/dash-bootstrap-components@0.11.3/dist/dash_bootstrap_components.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
