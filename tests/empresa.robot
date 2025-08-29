*** Settings ***
Resource        ../resources/empresa.resource
Test Setup      Abrir o navegador
Library    SeleniumLibrary


*** Test Cases ***

Cenário teste: Login de usuario perfil administrador com sucesso
    Passo 1 - Acessar a pagina de login
    
    Passo 2 - Digitar um e-mail válido
    Passo 3 - Digitar uma senha válida
    Passo 4 - Clicar no botão entrar
    Passo 5 - Verificar se realmente entrou no sistema
    Passo 6 - Selecionar cadastros
    Passo 7 - Selecionar empresa
    Passo 8 - Clicar no botão novo cadastro
    Passo 9 - Digitar um nome da Razão Social
    Passo 10 - Digitar um nome do Nome Fantasia
    Passo 11 - Digitar um email
    Passo 12 - Digitar um CNPJ
    Passo 13 - Digitar um telefone
    Passo 14 - Digitar Descrição do serviço
    Passo 15 - Digitar Nome do Responsável
    Passo 16 - Digitar um CEP
    Passo 17 - Digitar um Pais
    Passo 18 - Digitar um Cidade
    Passo 19 - Digitar um Estado
    Passo 20 - Digitar um Bairro
    Passo 21 - Digitar um Rua
    Passo 22 - Digitar um Número do Imovel
    Passo 23 - Digitar um Complemento
    Passo 24 - Clicar no botão salvar novo