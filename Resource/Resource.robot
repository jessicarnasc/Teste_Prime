
*** Settings ***        
Library                         SeleniumLibrary
Library                         AutoRecorder
Library                         SikuliLibrary


*** Variables ***
${BROWSER}                    chrome
${URL}                        https://www.primecontrol.com.br/
${DOCUMENTOS}                 ${CURDIR}\\Imagens\\Documentos.png
${CURRICULUM}                 ${CURDIR}\\Imagens\\Curriculum.png

*** Keywords ***
Abrir navegador
    Open Browser              ${URL}          ${BROWSER}
    Maximize Browser Window
    
    
Fechar navegador
    Capture Page Screenshot
    Close Browser