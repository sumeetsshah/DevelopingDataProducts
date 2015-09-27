library(shiny)

shinyUI(
        pageWithSidebar(
        headerPanel("Body Mass Index Calculator"),
        sidebarPanel(
                sliderInput("height","Select Your Height (cm)",min = 0, max = 300, value = 150),
                sliderInput("weight", "Select Your Weight (kg)", min = 0, max = 200, value = 100),
                submitButton('Calculate')
        ),
        mainPanel(
                h3('Calculation Results'),
                h4('Your Entered Height (cm):'),
                verbatimTextOutput("oheight"),
                h4('Your Entered Weight (kg):'),
                verbatimTextOutput("oweight"),
                h4('Your Body Mass Index:'),
                verbatimTextOutput("bmi"),
                h4('Your Classification:'),
                verbatimTextOutput("bmc"),
                h4('Ideal Weight Given Height (kg):'),
                verbatimTextOutput("idealWeight")
                )
        )
)