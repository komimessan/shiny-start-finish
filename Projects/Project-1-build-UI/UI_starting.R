# UI.R: UI definition

UI <- 
  tagList(
    h1("A Bag of Widgets"),
    p("Here are my widgets:"),
    sliderInput("fred", "Value:", min=0, max=100, value=55),
    selectInput("annie", "Pick an animal",
                choices = c("antelope", "bear", "chicken", "dove")),
    selectInput("location","Country:",
                choices = c("United States","Canada","Australia")),
    checkboxGroupInput("animal_type","Animal Type \n",
                  choices = c("Carnivore","Omnivore","Herbivore","All")),
    textOutput("felix"),
    plotOutput("fiona")
  )
