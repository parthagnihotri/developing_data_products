#
# This is the user-interface definition of a Shiny web application
# which plots Diamonds Price based on the Carat and Cut. 
#
#

library(shiny)
library(ggplot2)

# Define UI for application that draws Diamonds Price Plot
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Diamonds Price based on Carat/ Cut"),
  
  # Sidebar with a slider input for carat
  sidebarLayout(
    sidebarPanel(
       sliderInput("carat",
                   "Carat:",
                   min = 0,
                   max = 6,
                   value = 3)
    ),
    
    # Show a plot of the Price 
    mainPanel(
       plotOutput("plot")
    )
  )
))
