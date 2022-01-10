options(golem.app.prod = FALSE) # TRUE = production mode, FALSE = development mode
options(shiny.port = httpuv::randomPort())
# Could include this to trigger build when running `golem::run_dev()`
system("yarn build")
system("mv inst/app/favicon.ico inst/app/www/")
golem::detach_all_attached()
golem::document_and_reload()
run_app()
