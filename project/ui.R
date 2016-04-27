shinyUI(pageWithSidebar(  
    headerPanel("Simple Investment Calculator"),  
    sidebarPanel(    
        sliderInput('rate', 'Expected Return Rate %', value=4, min =0, max=20 ),
        sliderInput('years', 'Years to invest', value=30, min = 1, max=50 ),
        numericInput('startCash', 'Initial Investment ($0 - $1,000,0000)', value = 1000, min = 0, max = 1000000, step=500),
        actionButton("help", "Help"),
        textOutput('helpText')
        ),
        
    mainPanel(    
        h3("Final Dollar Amount"),
        textOutput('newFinal'),
        h3("Growth Chart of the Investment"),
        plotOutput('newInvestment')
    )
))