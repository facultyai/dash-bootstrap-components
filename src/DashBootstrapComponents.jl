
module DashBootstrapComponents
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "1.0.3"

include("jl/dbc_accordion.jl")
include("jl/dbc_accordionitem.jl")
include("jl/dbc_alert.jl")
include("jl/dbc_badge.jl")
include("jl/dbc_breadcrumb.jl")
include("jl/dbc_button.jl")
include("jl/dbc_buttongroup.jl")
include("jl/dbc_card.jl")
include("jl/dbc_cardbody.jl")
include("jl/dbc_cardfooter.jl")
include("jl/dbc_cardgroup.jl")
include("jl/dbc_cardheader.jl")
include("jl/dbc_cardimg.jl")
include("jl/dbc_cardimgoverlay.jl")
include("jl/dbc_cardlink.jl")
include("jl/dbc_carousel.jl")
include("jl/dbc_collapse.jl")
include("jl/dbc_dropdownmenu.jl")
include("jl/dbc_dropdownmenuitem.jl")
include("jl/dbc_fade.jl")
include("jl/dbc_form.jl")
include("jl/dbc_formfeedback.jl")
include("jl/dbc_formfloating.jl")
include("jl/dbc_formtext.jl")
include("jl/dbc_label.jl")
include("jl/dbc_checkbox.jl")
include("jl/dbc_checklist.jl")
include("jl/dbc_input.jl")
include("jl/dbc_inputgroup.jl")
include("jl/dbc_inputgrouptext.jl")
include("jl/dbc_radiobutton.jl")
include("jl/dbc_radioitems.jl")
include("jl/dbc_select.jl")
include("jl/dbc_switch.jl")
include("jl/dbc_textarea.jl")
include("jl/dbc_col.jl")
include("jl/dbc_container.jl")
include("jl/dbc_row.jl")
include("jl/dbc_listgroup.jl")
include("jl/dbc_listgroupitem.jl")
include("jl/dbc_modal.jl")
include("jl/dbc_modalbody.jl")
include("jl/dbc_modalfooter.jl")
include("jl/dbc_modalheader.jl")
include("jl/dbc_modaltitle.jl")
include("jl/dbc_nav.jl")
include("jl/dbc_navitem.jl")
include("jl/dbc_navlink.jl")
include("jl/dbc_navbar.jl")
include("jl/dbc_navbarbrand.jl")
include("jl/dbc_navbarsimple.jl")
include("jl/dbc_navbartoggler.jl")
include("jl/dbc_offcanvas.jl")
include("jl/dbc_pagination.jl")
include("jl/dbc_popover.jl")
include("jl/dbc_popoverbody.jl")
include("jl/dbc_popoverheader.jl")
include("jl/dbc_progress.jl")
include("jl/dbc_spinner.jl")
include("jl/dbc_table.jl")
include("jl/dbc_tab.jl")
include("jl/dbc_tabs.jl")
include("jl/dbc_toast.jl")
include("jl/dbc_tooltip.jl")
include("jl/icons.jl")
include("jl/themes.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_bootstrap_components",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "_components/dash_bootstrap_components.min.js",
    external_url = "https://unpkg.com/dash-bootstrap-components@1.0.3/dist/dash_bootstrap_components.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
