library(dashBootstrapComponents)

form <- dbcForm(
    dbcRow(
        list(
            dbcLabel("Email", width="auto"),
            dbcCol(
                dbcInput(type="email", placeholder="Enter email"),
                class_name="me-3",
            ),
            dbcLabel("Password", width="auto"),
            dbcCol(
                dbcInput(type="password", placeholder="Enter password"),
                class_name="me-3",
            ),
            dbcCol(dbcButton("Submit", color="primary"), width="auto")
        ),
        class_name="g-2",
    )
)
