library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Means of Random Exponentials"),

  
  # Enter number of random pulls from the exponential distribution 
  # on which to run 1000 simulations
  sidebarLayout(
    sidebarPanel(
       sliderInput("n",
                   "Number of pulls:",
                   min = 2,
                   max = 15,
                   value = 5)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h4("1000 simulations will be drawn from the exponential distribution.  The size of each simulation is determined by the value selected by the slider to the left."),
       plotOutput("expPlot"),
      h4("As you see, the higher the number in each simulation, the closer the plot will look to a normal distribution.")
    )
  )
))
