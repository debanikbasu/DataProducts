# Load data and packages
library(shiny)
AQ <- airquality

# Define UI for application
ui <- fluidPage(
      
      #Title
      titlePanel("Air Quality Data Analysis"),
      titlePanel(title=h3("The plot will display a scatter distribution of the Ozone levels (in parts ber billion) as compared to the chosen variable")),
      br(), br(),
      # Sidebar with a dropdown for variable and slider input for no. of observations 
      sidebarLayout(
            sidebarPanel(
                  selectInput("var", "Variable:",
                              list("Solar Radiation" = "Solar.R", 
                                   "Wind Speed" = "Wind", 
                                   "Temperature (F)" = "Temp")),

                  sliderInput("NObs", "Select how many observations to consider: ", min=0, max=154, value=154, step=1)
            ),
            
            # Print the selected plot
            mainPanel(
                  plotOutput("myPlot")
            )
      )
)

# Define Server Logic required to draw the plot

server <- function(input, output) {
      
      # Prepare appropriate caption for the plot based on selected inputs
      myMainLabel <- reactive({
            paste("Plot for Ozone ~",input$var, ", No of observations:",input$NObs)
      })
      
      formulaText <- reactive({
            paste("Ozone~",input$var,sep="")
      })
      
      # Select data for the plot based on slider input
      myData <- reactive({
            AQ <- AQ[1:input$NObs,]
            # Remove all NAs
            AQ <- AQ[complete.cases(AQ),]
            data.frame(AQ)
      })
      
      # Draw the plot
      output$myPlot <- renderPlot({
            plot(as.formula(formulaText()), 
                    data = myData(),
                    main = myMainLabel())
            abline(lm(as.formula(formulaText()),data=myData()))
      })
}

# Run the application 
shinyApp(ui = ui, server = server)