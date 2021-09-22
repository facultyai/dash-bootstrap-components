# README

This directory contains a collection of example apps that demonstrate usage of
`DashBootstrapComponents`. Many of the apps have dependencies that are not
dependencies of `DashBootstrapComponents` itself, each app has its own
`Project.toml` file containing these dependencies.

To run any app, navigate to the chosen directory then run

```julia
pkg> activate .
pkg> instantiate
```

then run the app with

```sh
julia --project=. app.jl
```
