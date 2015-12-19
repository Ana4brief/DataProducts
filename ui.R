library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Ultimatum game"),
  sidebarPanel(
#    h3('Proposed split'),
    h3('Propose split of 10'),
    numericInput('self','Keep for yourself', 0, min=0, max=10, step=1),
    numericInput('away','Give away', 0, min=0, max=10, step=1),
#    submitButton('Submit')
    actionButton("goButton", "Go!")
    ),
  mainPanel(
#    h3('Current situation'),
#    h3('Earnings'),
#    h4('Amount still to be played'),
#    verbatimTextOutput("obank"),
#    h4('Your have earned'),
#    verbatimTextOutput("oself"),
#    h4('You have given away'),
#    verbatimTextOutput("oaway"),
    h4('Computer decided'),
    textOutput("verdict")
  )
))