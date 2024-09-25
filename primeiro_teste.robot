*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Suite Setup    Set Environment Variable    webdriver.chrome.driver    ${CURDIR}/chromedriver.exe    # robotcode: ignore


*** Test Cases ***
Abrir o navegador e acessar o site do organo
    Open Browser     http://localhost:3000     browser=Chrome
    # Adicione seus testes aqui
Preencher os campos do formulário
    Input Text                   id:form-nome            Willian
    Input Text                   id:form-cargo           Desenvolvedor
    Input Text                   id:form-imagem          https://picsum.photos/100/100
    Click Element                class:lista-suspensa
    Click Element                //option[contains(.,"Programação")]
    Sleep                        10s
    Click Element                id:form-botao
    Element Should Be Visible    class:colaborador
    Sleep                        5s
            

