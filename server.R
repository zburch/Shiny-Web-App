library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$expPlot <- renderPlot({
    
    # define number of simulations
    nosim <- 1000
    #Run simulations of the size defined by the user
    avgDist <- NULL
    for (i in 1:nosim){
      avgDist <- c(avgDist,mean(rexp(input$n)))
    }
    
    # draw the histogram
    hist(avgDist, 
         main = 'Averages of Random Exponentials',
         xlab = paste("Means of",input$n,"Exponential Values"),
         col = 'darkgray', 
         border = 'white',
         breaks=20)
    
  })
  
})
