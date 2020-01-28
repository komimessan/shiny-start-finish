#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyjs)

# Define UI for application that draws a histogram
ui <- fluidPage(
    useShinyjs(),
    selectInput("data", "Data set:",
                choices =c("Please pick a date set" = "",
                    "first","two","three")),
    selectInput("xvar","X variable",
                choices = c("message" = "")),
    plotOutput("histogram")

)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
    #hide("xvar") # initialization
    raw_data <- reactive({
        switch (input$data,
            first = mtcars,
            two = iris,
            three = cars
        )

    })
    
    observe({
        if (isTruthy(input$data)) {
            show("data")
        } else {
            hide("hide")
        }
    })
    
    observeEvent(raw_data(), {
        req(input$data)
        updateSelectInput(session,"xvar",
                          choices = names(raw_data()),
                          label = "Hoobar!")
    })
    the_variable <- reactive({
        raw_data()[[input$xvar]]
    })
        
    output$histogram <- renderPlot({
        req(input$xvar)
        hist(the_variable())
    })

}

options(shiny.reactlog = TRUE)

# Run the application 
shinyApp(ui = ui, server = server)
