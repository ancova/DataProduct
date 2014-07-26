library(shiny)
shinyServer(
    function(input, output) {
    	output$wtext <- renderPrint({cat("Weight:",as.character(input$weight), input$Wunit)})
    	output$htext <- renderPrint({cat("Height:",as.character(input$height), input$Hunit)})
        BMI <- reactive({
            if (input$Hunit=="Inches") height=0.0254000*input$height else height=input$height
            if (input$Wunit=="Pounds") weight=0.4535924*input$weight else weight=input$weight
            weight/height^2
        })
        output$BMI <- renderPrint({round(BMI(),2)})
        output$Obes <- renderPrint({
            if (BMI()<18.5) Obes='underweight. Fatten yourself up!' else {
                if (BMI()<25) Obes='normal. Congratulations!' else {
                    if (BMI()<30) Obes='overweight. Please watch your weight!' else Obes='obese. Please try to lose some weight!'
              }
            }
        cat("You are", Obes)
    	})
    }
)