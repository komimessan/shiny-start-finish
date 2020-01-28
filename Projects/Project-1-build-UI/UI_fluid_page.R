# See Muggle.R for these definitions
# UI <- 
#   fluidPage(
#     fluidRow(
#       column(width = 4, First, Second),
#       column(width = 3, Third)
#     ),
#     fluidRow(Fourth, Fifth),
#     title = "Fluid"
#   )

UI <- 
  fluidPage(
    fluidRow(
      column(width = 3,First, Fourth, Fifth),
      column(width = 3, Second),
      column(width = 3, Third)
    ),
    title = "Fluid"
  )

# No good reason to define these things in Muggle.R
# rather than here. But it helps keep in mind the distinction
# between Muggle code and Wizard code.

