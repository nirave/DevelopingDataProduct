library(UsingR)

shinyServer(  
    function(input, output) {    
        output$newInvestment <- renderPlot({ 
            lastYear <- 2016 + input$years - 1
            years = c(2016:lastYear)
            dollars<-c(1:input$years)
            
            for (i in dollars) {
                dollars[i] = input$startCash * (1+input$rate/100)^i
            }
            
            names(dollars) <- years
            barplot(dollars, xlab="Year", ylab="Dollar Amount", 
                    col='lightblue', main="Dollar Amount per year")
           
        })
        output$newFinal<-({
            finalValue <- 
            renderText({paste("Final Amount $", input$startCash * round((1+input$rate/100)^input$years, 2))})
        })
        
    }
)