# Define server logic required to draw a histogram
server <- function(input, output, session) {
  # output$distPlotlistStates = c("state1", "state2", "state3")

  observe({
    selectedState <- input$state
    updateSelectInput(session,"municipality",
                      choices=DictStateMunicipalities[[selectedState]],
                      selected="NONE")
  })
  
  outputState <- reactive(paste0("Estado selecionado foi ", input$state, "!"))
  outputMunicipality <- reactive(paste0("Município selecionado foi ", input$municipality, "!"))
  # outputState <- reactive(paste0("Estado selecionado foi ", input$state, "!"))
  
  output$state <- renderText(outputState())
  output$municipality <- renderText(outputMunicipality())
}