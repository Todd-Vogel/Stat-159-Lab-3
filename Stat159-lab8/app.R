library('shiny')

getwd()
setwd("Documents/Senior Year/planets/Stat159-lab8")
advertising <- read.csv("Advertising.csv")


ui <- fluidPage(
  selectInput(inputId = "variable", label = "Plot for Various Advertising Medium", choices=c('TV', 'Radio', 'Newspaper')),
  plotOutput("plot")
)
server <- function(input, output) {
  output$plot <- renderPlot( {plot(advertising[,input$variable], advertising$Sales, pch =20, color = 'purple', xlab = input$variable, ylab = 'Sales')} )
}
shinyApp(ui = ui, server = server)

