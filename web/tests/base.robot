*** Settings ***
Library   SeleniumLibrary 

*** Variables ***
${url}                      https://training-wheels-protocol.herokuapp.com

*** Keywords ***
Nova sessão
  open Browser                          ${url}             chrome

Encerra sessão
  Capture Page Screenshot
  Close Browser
