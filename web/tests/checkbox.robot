*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
${check_thor}               id:thor
${check_ironman}    css:input[value='iron-man']
${check_panther}   xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
By checking with the Id
  Go To                                 ${url}/checkboxes
  Select Checkbox                       ${check_thor} 
  Checkbox Should Be Selected           ${check_thor} 

By checking with CSS Selector   
  Go To                                 ${url}/checkboxes
  Select Checkbox                       ${check_ironman}
  Checkbox Should Be Selected           ${check_ironman}

By checking whith Xpath
  [tags]    ironman   
  Go To                                 ${url}/checkboxes
  Select Checkbox                       ${check_panther}
  Checkbox Should Be Selected           ${check_panther}


