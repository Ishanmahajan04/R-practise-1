library(shiny)

shinyUI(fluidPage(

  useShinyjs(),
  div(id = 'div1',
      titlePanel("RHOT - Form"),
      fluidRow(column(width = 3,selectizeInput("Trialid","What Iteration is this?",choices = c('1','2-3','4-7','8-15'))),
               column(width = 3,textInput("Techie_Name","Your Name",value='EE')),
               column(width = 3,textInput("lab_id","LAB ID",value='NA')),
               column(width = 3,textInput("email","Your Email ID",value='eeshanchatterjee@gmail.com'))
      ),
      h4('Observations:'),
      rHandsontableOutput("handsontable_obs"),
      actionButton("SaveObs", "Save Observations")
  ),
  shinyjs::hidden(div(id = 'SubmitMsg',
                      h3("Thanks for submitting the Observations!"),
                      actionLink('addNextObs',"Add Another Observation"))
))
)