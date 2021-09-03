*** Settings ***
Resource                        ../Page/Page.robot




*** Keywords ***    

Dado que Acesso o Site
    Sleep                                    10
    Wait Until Element Is Visible           ${Logo}                      120
    

Quando clico no campo contato 
    Sleep                                    5
    Wait Until Element Is Visible           ${CampoContato}                      120
    Click Element                           ${CampoContato}    
    Capture Page Screenshot

E clico no campo trabalhe conosco
    Sleep                                   5
    Wait Until Element Is Visible           ${CampoTrabalheConosco}   120
    Click Element                           ${CampoTrabalheConosco} 
    Capture Page Screenshot

E clico na opção cadastre seu curriculum
    Sleep                                   5
    Wait Until Element Is Visible           ${CampoCurriculum}         120
    Click Element                           ${CampoCurriculum}
    Sleep                                   3
    Switch Window                           title=Cadastre seu currículo- Prime Control           


E preencho os campos "${NomeCompleto}", "${CargoPretendido}", "${Email}" e "${Telefone}"
    Sleep                                   10
    Wait Until Element Is Visible           ${CampoNome}               120
    SeleniumLibrary.Input Text              ${CampoNome}               ${NomeCompleto}
    Sleep                                   5
    Wait Until Element Is Visible           ${CampoCargo}              120
    SeleniumLibrary.Click Element           ${CampoCargo} 
    SeleniumLibrary.Input Text              ${CampoCargo}              ${CargoPretendido}
    Sleep                                   5
    Wait Until Element Is Visible           ${campoEmail}              120
    SeleniumLibrary.Click Element           ${campoEmail} 
    SeleniumLibrary.Input Text              ${campoEmail}              ${Email}
    Sleep                                   5
    Wait Until Element Is Visible           ${CampoTelefone}           120
    SeleniumLibrary.Click Element           ${CampoTelefone} 
    SeleniumLibrary.Input Text              ${CampoTelefone}           ${Telefone}
       


Então dou click em enviar Curriculum e valido que foi enviado "${Mensagem}"
    Sleep                                   5
    Wait Until Element Is Visible           ${CampoArquivo}              120
    Click Element                           ${CampoArquivo} 
    Capture Page Screenshot
    Sleep                                   3
    SikuliLibrary.Double Click              ${DOCUMENTOS}
    Sleep                                   3
    SikuliLibrary.Double Click              ${CURRICULUM}
    Sleep                                   2
    SeleniumLibrary.Click Element           ${BotaoFinalizar}
    Sleep                                   3
    Element Should Contain                  ${MensagemSucesso}      ${Mensagem}
    Capture Page Screenshot
