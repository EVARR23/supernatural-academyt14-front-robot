*** Settings ***
Resource    ../resources/variables.resource
Library    SeleniumLibrary
Library  String


*** Keywords ***
Abrir o navegador
    Open Browser                    browser=chrome     options=add_argument(--headless)    options=add_argument(--no-sandbox)      options=add_argument(--disable-dev-shm-usage)
   
Fechar o navegador
    Close All Browsers      

Passo 1 - Acessar a pagina de login
    Go To                             url=${urlBase}
  
Passo 2 - Digitar um e-mail válido
    wait Until Element Is Visible    locator=${emailInput}
    Input Text                       locator=${emailInput}    text=${emailValido}

Passo 3 - Digitar uma senha válida
    wait Until Element Is Visible    locator=${senhaInput}
    Input Password                   locator=${senhaInput}    password=${senhaValido}

Passo 4 - Clicar no botão entrar
    wait Until Element Is Visible    locator=${botãoInput}
    Click Button                     locator=${botãoInput}
    
    ${popup_visivel}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//button[contains(text(),'OK')]
    Run Keyword If    ${popup_visivel}    Click Button    xpath=//button[contains(text(),'OK')]
Passo 5 - Verificar se realmente entrou no sistema
    Wait Until Page Contains        text=Logout
    

Passo 6 - Selecionar cadastros
    Wait Until Element Is Visible    xpath=//*[@id="Cadastros"]
    Click Element                    xpath =//*[@id="Cadastros"]            
    

Passo 7 - Acessar o centro de custos
    Wait Until Element Is Visible    xpath=//*[@id="Centro de Custo"]
    Click Element                    xpath=//*[@id="Centro de Custo"]
    Sleep    10s
Passo 8 - Clicar no botão novo cadastro
    Wait Until Element Is Visible   xpath=//*[@id="Novo Cadastro"]
    Click Button                    xpath=//*[@id="Novo Cadastro"]
Passo 9 - Digitar um nome do centro de custo
    ${nome_centro} =  Generate Random String  5  [UPPER]
    Wait Until Element Is Visible   xpath=//*[@id="costCentername"] 
    Input Text                      xpath=//*[@id="costCentername"]   ${nome_centro}  

Passo 10 - Seleciona uma diretoria
    Wait Until Element Is Visible    xpath=//*[@id="Diretoria"]
    Click Element                    xpath =//*[@id="Diretoria"]       

Passo 11 - Acessar uma diretoria
    Wait Until Element Is Visible    xpath=//*[@id="Diretoria"]/option[2]
    Click Element                    xpath=//*[@id="Diretoria"]/option[2]

Passo 12 - Clicar no botão salvar novo
    Wait Until Element Is Visible    xpath=//*[@id="save"]
    Click Button                     xpath=//*[@id="save"]
    Sleep    10s


 Passo 12 - Clicar no botão cancelar novo
    Wait Until Element Is Visible    xpath=//*[@id="cancel"]
    Click Button                     xpath=//*[@id="cancel"]
    Sleep    10s

