#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  titlePanel("Calculator for Body Masss Index (BMI)"),
  
  sidebarLayout(
    sidebarPanel( 
      
      helpText("Body Mass Index (BMI) is particularly important in monitoring health. This application will help you measure your BMI. Let's get started."),            
      br(),           
      numericInput("ing_weight_kg",label = h4("Please enter your weight  in kilograms."),min = 40, max = 300,0), #, value = 70
      br(),
      numericInput("int_height_cm",label = h4(" Please enter your height in centimeters."),min = 50, max = 250,0), #,value = 170
      br(),
      
      br(),   
      actionButton("FindBMI", label = "Calculate my BMI.")    
      
      
    ),
    mainPanel
    (
      tabsetPanel
      (
        tabPanel("BMI Details",
                 p(h4("Here are your current details:")),
                 textOutput("current_height"),
                 textOutput("current_weight"),
                 br(),
                 p(h4("Your BMI  information is shown below:")),
                 textOutput("BMI_result"),
                 p(h4("BMI classification is:")),
                 textOutput("status_indicator")
                 
        ),
        tabPanel(
          "Documentation",
          p(h4("Body Mass Index Calculator")),
          br(),
          helpText("This application will calculate the person's body mass index using the  current weight in kilograms and height measured in centimeters as input."),
          p(h3("Why monitoring your BMI is important?")),
          helpText("Monitoring your BMI is particularly important to know if your weight is normal, underweight or overweight. This is also common measure used by doctor to have a parameter about a person's health. Morever it will also served as a monitoring tool for individual who is conscious of their weights."),
          br(),
          helpText("Thank you for using the  application.")
          )
        
        
      )
    )
  )
))