library(shiny)

bodyMassIndex<-function(height,weight) weight/((height/100)^2)
bodyMassClassification<-function(bmi){
        result<-""
        if(bmi<18.5){
                result<-"Underweight"    
        }
        if(bmi>=18.5 && bmi<25){
                result<-"Healthy Weight"  
        }    
        if(bmi>=25 && bmi<30){
                result<-"Overweight"
        }
        if(bmi>=30){
                result<-"Obese"
        }
        return(result)
}
idealWeightCalc<-function(height) 21.75*((height/100)^2)

shinyServer(
        function(input, output) {
                output$oheight<-renderPrint({input$height})
                output$oweight<-renderPrint({input$weight})
                output$bmi<-renderPrint({bodyMassIndex(input$height,input$weight)})
                output$bmc<-renderPrint({bodyMassClassification(bodyMassIndex(input$height,input$weight))})
                output$idealWeight<-renderPrint({idealWeightCalc(input$height)})
        }
)