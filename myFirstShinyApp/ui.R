selectInputState <- selectInput(
  "state",
  label = "Estado",
  choices = listStates,
  selected = "NONE"
)


selectInputMunicipality <- selectInput(
  "municipality",
  label = "Município",
  choices = listMunicipalities,
  selected = "NONE"
)


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("Ficha de Municípios"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInputState,
      selectInputMunicipality
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      textOutput("state"),
      textOutput("municipality")
    )
  )
)