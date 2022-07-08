*** Settings ***
Library   app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
  ${result}=         welcome   Aline 
  should be equal    ${result}  Olá Aline, Bem-vindo ao curso básico de robot Framework  
