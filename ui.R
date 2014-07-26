library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Calculate your Body Mass Index (BMI)"),
    sidebarPanel(
        h4('Instructions'),
        helpText("This is a simple Body Mass Index (BMI) calculator. Please input your height and weight to calculate your BMI. Please fill in your numbers and choose the corresponding units for each measurements. e.g. Meters or inches for height, kilograms or pounds for weight."),
        numericInput("height","Height",1.70),
        selectInput("Hunit", "", choice=c("Meters", "Inches")),
        numericInput("weight","Weight",60.00),
        selectInput("Wunit", "", choice=c("Kilograms", "Pounds"))
    ),
    mainPanel(
        h4('Results of Calculation'),
        helpText("Note: BMI (Body Mass Index) is a measurement of body fat based on height and weight that applies to both men and women between the ages of 18 and 65 years."),
        helpText("BMI can be used to indicate if you are overweight, obese, underweight or normal. A healthy BMI score is between 18.5 and 25. A score below 18.5 indicates that you may be underweight; a value above 25 indicates that you may be overweight."),
        h5('Your entered'),
        verbatimTextOutput("wtext"),
        verbatimTextOutput("htext"),
        h5('Your BMI'),
        verbatimTextOutput("BMI"),
        verbatimTextOutput("Obes")
    )
))