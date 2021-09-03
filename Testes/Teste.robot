*** Settings ***
Resource                        ../Steps/Steps.robot


Test Setup                      Abrir navegador
Test Teardown                   Fechar Navegador



*** Test Cases ***
# Robot -t "CT01:Enviar curriculum" -d ./Reports/CT01 "Testes\Teste.robot"
CT01:Enviar curriculum
  Dado que Acesso o Site
  Quando clico no campo contato 
  E clico no campo trabalhe conosco
  E clico na opção cadastre seu curriculum
  E preencho os campos "Jessica Rocha", "Analista de QA", "jessicarochalima21@gmail.com" e "11987793226"
  Então dou click em enviar Curriculum e valido que foi enviado "com sucesso"