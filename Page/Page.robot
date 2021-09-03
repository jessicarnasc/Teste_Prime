*** Settings ***
Resource                        ../Resource/Resource.robot


*** Variables ***

${Logo}                              xpath=//div[@id='main']
${CampoContato}                      xpath=//li[@id='menu-item-875']
${CampoTrabalheConosco}              xpath=//li[@id='menu-item-2156']//a[@href='/trabalhe-conosco']
${CampoCurriculum}                   xpath=//a[@href='https://jobs.quickin.io/primecontrol/apply?src=website']
${CampoNome}                         xpath=//div[@class='form-group']//input[@id='name']
${CampoCargo}                        xpath=//div[@class='form-group']//input[@id='headline']
${campoEmail}                        xpath=//div[@class='form-group']//input[@id='email']
${CampoTelefone}                     xpath=//div[@class='flex-grow-1 mr-1']//input[@id='phone-0']
${CampoArquivo}                      xpath=//div[@class='custom-file']
${BotaoFinalizar}                    xpath=//button[@class='btn btn-lg btn-block-mobile btn-primary']
${MensagemSucesso}                   xpath=//*[contains(text(),'com sucesso')]