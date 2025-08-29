*** Settings ***
Resource    ../resources/variables.resource
Library    SeleniumLibrary



*** Keywords ***
Abrir o navegador
    Open Browser                    browser=chrome      options=${BROWSER_OPTIONS}   
    
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

Passo 5 - Verificar se realmente entrou no sistema
    Wait Until Page Contains        text=Logout

Passo 6 - Selecionar cadastros
    Wait Until Element Is Visible    xpath=//*[@id="Cadastros"]
    Click Element                    xpath =//*[@id="Cadastros"]            
    
    
Passo 7 - Selecionar empresa
    Wait Until Element Is Visible    xpath=//*[@id="Empresa"]
    Click Element                    xpath=//*[@id="Empresa"]



Passo 8 - Clicar no botão novo cadastro
    Wait Until Element Is Visible   xpath=//*[@id="Novo Cadastro"]
    Click Button                    xpath=//*[@id="Novo Cadastro"]
    Sleep    5s

Passo 9 - Digitar um nome da Razão Social
    Wait Until Element Is Visible   xpath=//*[@id="companyName"]
    Input Text                      xpath=//*[@id="companyName"]    text=Empresa Ti

Passo 10 - Digitar um nome do Nome Fantasia
    Wait Until Element Is Visible   xpath=//*[@id="fantasyName"]
    Input Text                      xpath=//*[@id="fantasyName"]    text= Empresa de Tecnologia

Passo 11 - Digitar um email
    Wait Until Element Is Visible   xpath=//*[@id="companyMail"]
    Input Text                      xpath=//*[@id="companyMail"]    text= evilhe.ibce@gmail.com

Passo 12 - Digitar um CNPJ
    Wait Until Element Is Visible   xpath=//*[@id="matriz"]
    Input Text                      xpath=//*[@id="matriz"]    12345678901234

    
Passo 13 - Digitar um telefone
    Wait Until Element Is Visible   xpath=//*[@id="telephone"]
    Input Text                      xpath=//*[@id="telephone"]    text= 11999999999

Passo 14 - Digitar Descrição do serviço
    Wait Until Element Is Visible   xpath=//*[@id="serviceDescription"]
    Input Text                      xpath=//*[@id="serviceDescription"]    text= Empresa de Tecnologia para testes automatizados
Passo 15 - Digitar Nome do Responsável
    Wait Until Element Is Visible   xpath=//*[@id="fullName"]
    Input Text                      xpath=//*[@id="fullName"]    text= Maria da Silva

 Passo 16 - Digitar um CEP
    Wait Until Element Is Visible   xpath=//*[@id="zipCode"]
    Input Text                      xpath=//*[@id="zipCode"]    text= 09950180

Passo 17 - Digitar um Pais
    Wait Until Element Is Visible   xpath=//*[@id="country"]  
    Input Text                      xpath=//*[@id="country"]    text= Brasil  

Passo 18 - Digitar um Cidade
    Wait Until Element Is Visible   xpath=//*[@id="city"]    
    Input Text                      xpath=//*[@id="city"]    text= Diadema
Passo 19 - Digitar um Estado
    Wait Until Element Is Visible   xpath=//*[@id="state"]
    Input Text                      xpath=//*[@id="state"]    text= SP


Passo 20 - Digitar um Bairro
    Wait Until Element Is Visible   xpath=//*[@id="district"]
    Input Text                      xpath=//*[@id="district"]    text= Centro  
    
Passo 21 - Digitar um Rua
    Wait Until Element Is Visible   xpath=//*[@id="street"] 
    Input Text                      xpath=//*[@id="street"]    text= Rua das Flores    

Passo 22 - Digitar um Número do Imovel
    Wait Until Element Is Visible   xpath=//*[@id="number"]
    Input Text                      xpath=//*[@id="number"]    text= 100

Passo 23 - Digitar um Complemento
    Wait Until Element Is Visible   xpath=//*[@id="complement"]
    Input Text                      xpath=//*[@id="complement"]    text= Casa

Passo 24 - Clicar no botão salvar novo
    Wait Until Element Is Visible    xpath=//*[@id="save"]
    Click Button                     xpath=//*[@id="save"]
    Sleep    5s

    
   
    
    
    