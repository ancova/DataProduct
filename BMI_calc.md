Course Project: Calculate your Body Mass Index (BMI)
========================================================
author: Canqing YU
date: July 25th, 2014
transition: linear

Background: About BMI (Body Mass Index).
========================================================

- **BMI** is a measurement of body fat based on height and weight that applies to both men and women between the ages of 18 and 65 years.
- It is defined as the individual's body mass divided by the square of their height – with the value universally being given in units of $kg/m^2$.

--[From Wikipedia](http://en.wikipedia.org/wiki/Body_mass_index)

BMI Calculation
========================================================

Formula: 

$$BMI =\frac{mass(kg)}{(height(m))^2}=\frac{mass(lb)}{(height(in))^2}\times7.03$$

R codes:

```r
library(shiny)
shinyServer(
    function(input, output) {
    BMI <- reactive({
    if (input$Hunit=="Inches") height=0.0254*input$height else height=input$height
    if (input$Wunit=="Pounds") weight=0.4536*input$weight else weight=input$weight
    weight/height^2
    })
})
```

Features of the shiny apps:
========================================================
1. Super easy, only two steps to use: 
    - Input your height and weight;
    - choose the corresponding units for each measurements.
2. Compatible with different units:
    - Height: meters and inches;
    - Weight: kilograms and pounds;
3. Simple advices based on the results.
4. Link: [http://ancova.shinyapps.io/CourseProject/](http://ancova.shinyapps.io/CourseProject/)

Results
===============
Please find your BMI category in following table.

BMI results| Categories
-------|------------
$BMI \lt 18.5$ |Underweight
$18.5 \le BMI \lt 25$ |Normal
$25 \le BMI \lt 30$ |Overweight
$BMI \ge 30$ |Obese

Thank you!
