*** Settings ***
Resource          base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***
Selecionar por texto e validar pelo valor
  Go To                          ${url}/dropdown
  Select From List By Label       class:avenger-list          Scott Lang
  ${selected}=                    Get selected List Value     class:avenger-list
  Should Be Equal                 ${selected}                 7

Selecionar pelo valor 
  Go To                          ${url}/dropdown
  Select From List By value       id:dropdown                 6  
  ${selected}=                    Get selected List Label     id:dropdown
  Should Be Equal                 ${selected}                 Loki