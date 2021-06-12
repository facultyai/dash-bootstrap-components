using DashBootstrapComponents

list_group = dbc_listgroup([
    dbc_listgroupitem([
        dbc_listgroupitemheading("This item has a heading"),
        dbc_listgroupitemtext("And some text underneath"),
    ]),
    dbc_listgroupitem([
        dbc_listgroupitemheading("This item also has a heading"),
        dbc_listgroupitemtext("And some more text underneath too"),
    ]),
])
