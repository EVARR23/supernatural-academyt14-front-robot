*** Settings ***
Resource        ../resources/centroDeCusto.resource
Test Setup      Abrir o navegador
Library    SeleniumLibrary
Library    Dialogs
# Test Teardown   Fechar o navegador


*** Test Cases ***
  
Cenário teste: Cadastrar Centro de custo com sucesso
    Passo 1 - Acessar a pagina de login
    Passo 2 - Digitar um e-mail válido
    Passo 3 - Digitar uma senha válida
    Passo 4 - Clicar no botão entrar
    Pause Execution
    Passo 5 - Verificar se realmente entrou no sistema
    Passo 6 - Selecionar cadastros
    Passo 7 - Acessar o centro de custos
    Passo 8 - Clicar no botão novo cadastro
    Passo 9 - Digitar um nome do centro de custo
    Passo 10 -Seleciona uma diretoria
    Passo 11 - Acessar uma diretoria
    Passo 12 - Clicar no botão salvar novo
    
Cenário teste:Cadastrar Centro de custo com o campo de nome de custo vazío
    Passo 1 - Acessar a pagina de login
    Passo 2 - Digitar um e-mail válido
    Passo 3 - Digitar uma senha válida
    Passo 4 - Clicar no botão entrar
    Pause Execution
    Passo 5 - Verificar se realmente entrou no sistema
    Passo 6 - Selecionar cadastros
    Passo 7 - Acessar o centro de custos
    Passo 8 - Clicar no botão novo cadastro
    
    Passo 10 -Seleciona uma diretoria
    Passo 11 - Acessar uma diretoria
    Passo 12 - Clicar no botão salvar novo
    Sleep    5s
    ${mensagem}=    Get Text    xpath=//*[@id="root"]/div/div[2]/div[2]/div/div/div/div[2]/form/div[1]/div/span
    Should Be Equal As Strings    ${mensagem}    Campo obrigatório

Cenário teste: Cadastrar Centro de custo com o campo sem selecionar uma direitoria
    Passo 1 - Acessar a pagina de login
    Passo 2 - Digitar um e-mail válido
    Passo 3 - Digitar uma senha válida
    Passo 4 - Clicar no botão entrar
    Pause Execution
    Passo 5 - Verificar se realmente entrou no sistema
    Passo 6 - Selecionar cadastros
    Passo 7 - Acessar o centro de custos
    Passo 8 - Clicar no botão novo cadastro
    Passo 9 - Digitar um nome do centro de custo
    
    Passo 11 - Acessar uma diretoria
    Passo 12 - Clicar no botão salvar novo
    Sleep    5s
    ${mensagem}=    Get Text    xpath=//*[@id="root"]/div/div[2]/div[2]/div/div/div/div[2]/form/div[2]/div/span
    Should Be Equal As Strings    ${mensagem}    Seleciona uma diretoria

Cenário teste: Cadastrar centro de custo clicar em cancelar
    Passo 1 - Acessar a pagina de login
    Passo 2 - Digitar um e-mail válido
    Passo 3 - Digitar uma senha válida
    Passo 4 - Clicar no botão entrar
    Pause Execution
    Passo 5 - Verificar se realmente entrou no sistema
    Passo 6 - Selecionar cadastros
    Passo 7 - Acessar o centro de custos
    Passo 8 - Clicar no botão novo cadastro
    Passo 9 - Digitar um nome do centro de custo
    Passo 10 -Seleciona uma diretoria
    Passo 11 - Acessar uma diretoria
    Passo 12 - Clicar no botão cancelar 
    Sleep    5s
    ${mensagem}=    Get Text    xpath=//*[@id="root"]/div/div[2]/div[2]/div/div/div/div[3]/h2
    Should Be Equal As Strings    ${mensagem}    Se você sair sem salvar, todos os dados serão perdidos, deseja cancelar?
    


    







    

