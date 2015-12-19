library(shiny)
bank<<-10
decision <- function(self,away){
  variable<-((away/self)>(0.3+runif(1,min=-0.1,max=0.4)))
  if(variable)
    "accepted"
  else
    "rejected"
}
#newbank<-function(bank,self,away){
#  bank-self-away
#}

shinyServer(
  function(input, output) {
    output$obank<-renderPrint({bank})
#    output$obank<-renderPrint({
#      input$goButton
#      isolate(newbank(bank,input$self,input$away))})
#    yesno<-reactive(decision(input$self,input$away))
    output$verdict<-renderPrint({
      input$goButton
      isolate(decision(input$self,input$away))})
#      isolate(yesno())})
#    if(yesno()=="accepted"){
#    output$oself<-renderPrint({
#      input$goButton
#      isolate(input$self)})
#    output$oaway<-renderPrint({
#      input$goButton
#      isolate(input$away)})
#    }
#    else{
#      output$oself<-renderPrint({
#        input$goButton
#        isolate(0)})
#      output$oaway<-renderPrint({
#        input$goButton
#        isolate(0)})      
#    }
##    if(input$goButton>submit){
##      submit<-input$goButton
##      
##      output$verdict<-renderPrint({as.character(submit)})    
##      if(decision){
##        output$oself<-renderPrint({output$oself+input$self})
##        output$oaway<-renderPrint({output$oaway+input$away})
##        output$verdict<-reactive("accepted")
##      }
##      else{
##        output$verdict<-reactive("rejected")
##      }
##    }
  }
)