library(shiny)
library(ggplot2)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Experiment with ggplot2 and cars data"),
        
        # Sidebar with a slider input for number of observations
        sidebarPanel(
                selectInput("geom", "Choose a ggplot2 geometry:", choices = c("area","bin2d","boxplot", "col","count","density2d","dotplot","hex","jitter","line","point","quantile","rug","smooth","step","violin"), selected = "violin" ),
                selectInput("x", "Choose x:", choices = colnames(mpg), selected = "cyl"),
                selectInput("y", "Choose y:", choices = colnames(mpg), selected = "hwy"),
                selectInput("colour", "Choose colour:", choices = colnames(mpg), selected = "model" ),
                selectInput("facet_wrap", "Choose facet_wrap:", choices = colnames(mpg), selected = "manufacturer" )
        ),
        
        # Show the generated plot
        mainPanel(
                plotOutput("ggplot_Plot"),
                h5(textOutput("ggplot_command")),
                h2("DOCUMENTATION"),
                p("Modify the choice in any of the 5 selection widgets and just observe how the displayed plot changes: enjoy!")
        )
))