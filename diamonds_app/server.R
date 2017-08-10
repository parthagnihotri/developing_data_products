#
# This is the server logic of a Shiny web application which
# filters Diamonds data based on input carat and creates
# price plot based on carat and cut.
#

library(shiny)
library(ggplot2)
library(dplyr)

# Define server logic required to draw Price Plot
shinyServer(function(input, output) {
   
  output$plot <- renderPlot({
  
    # Filter diamonds data based on the carat input
    d <- diamonds %>% filter(carat <= input$carat)

    # draw the plot 
    p <- ggplot(d, aes(d$carat, d$price))
    p <- p + geom_line()
    p <- p +  xlab("Carat") + ylab("Price")
    p <- p + facet_wrap(~cut)
    print(p)
    
  })
  
})
