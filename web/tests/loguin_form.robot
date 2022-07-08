*** Settings ***
Resource    base.robot
Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***
Login com sucesso
  Go To                 ${url}/login
  Loguin With           stark             jarvis!
  Page Should See Logged username     Olá, Tony Stark. Você acessou a área logada!

Senha invalida
  [tags]                              login_error
  Go To                               ${url}/login
  Loguin With                         stark    acb123  
  Should Contain Loguin Alert         Senha é invalida!

Usuário não existe 
  [tags]                             login_user404  
  Go To                              ${url}/login
  Loguin With                         papito             123456
  Should Contain Loguin Alert         O usuário informado não está cadastrado!
  
*** Keywords ***
Loguin With
  [Arguments]           ${uname}     ${pass}
  Input Text            css:input[name=username]      ${uname}
  Input Text            css:input[name=password]      ${pass}
  Click Element         class:btn-login

Should Contain Loguin Alert
  [Arguments]           ${expect_message}
  
  ${message}=      Get WebElement     id:flash
  Should Contain   ${message.text}   ${expect_message} 

Should See Logged username
  [Arguments]           ${full_name}
  Page Should Contain   Olá, ${full_name} Você acessou a área logada!