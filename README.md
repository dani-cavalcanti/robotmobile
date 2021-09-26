# robotmobile
Projeto de automação do curso de Robot Framework + Appium ministrado por Fernando Papito na QA Ninja

Ambiente no Appium:
  servidor: http://localhost:4723
  capability:
        {
          "automationName": "UiAutomator2",
          "platformName": "Android",
          "deviceName": "Emulator",
          "app": "C:\\qaninja\\twp\\app\\twp.apk",
          "udid": "emulator-5554"
        }

Instalação da biblioteca do Appium para o Robot: pip install --upgrade robotframework-appiumlibrary

Padrão para chamada de tela com o Appium

  ***Settings***
  //Chamando a biblioteca do Appium
      Library     AppiumLibrary


   ***Test Cases***
   // Caso de Testes
      Deve acessar a tela Dialogs  
      
   // Configuração do capability no código Robot
        Open Application        http://localhost:4723/wd/hub
        ...                     automationName=UiAutomator2
        ...                     platformName=Android
        ...                     deviceName= Emulator
        ...                     app=${EXECDIR}/app/twp.apk
