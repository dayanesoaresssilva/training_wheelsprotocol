*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***
Selecionando por Id
  Go To                                 ${url}/radios
  Select Radio Button                   movies       cap
  Radio Button Should be Set To          movies       cap

Selecionando por value 
  Go To                                 ${url}/radios
  Select Radio Button                   movies        guardians
  Radio Button Should be Set To         movies        guardians
