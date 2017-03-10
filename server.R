
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$handsontable_obs = renderRHandsontable({
    rhandsontable(data.frame(Obs_itr = c(1:5),
                             Val1 = rep(0,5),
                             Val2 = rep(0,5)))
  })
  
  observeEvent(input$SaveObs,{
    shinyjs::reset("div1")
    shinyjs::hide("div1")
    shinyjs::show("SubmitMsg")
  })
  
  observeEvent(input$addNextObs,{
    shinyjs::show("div1")
    shinyjs::hide("SubmitMsg")
  })

})
