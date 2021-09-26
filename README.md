# robotmobile
Projeto de automação do curso de Robot Framework + Appium ministrado por Fernando Papito na QA Ninja

Downloads necessários:
  * Python - https://www.python.org/downloads/
  * Visual Studio Code - https://code.visualstudio.com/download
  * Console Emulator - https://cmder.net/
  * Android Studio - https://developer.android.com/studio?hl=pt-br
  * Appium Desktop - https://appium.io/downloads.html

Ambiente no Android Studio:
  Clicar em AVD Manager e criar um celular virtual (usei o Pixel 2 API 28 que tem o Android 9 rodando)
![image](https://user-images.githubusercontent.com/61482528/134793978-224baf3e-b2c7-49bb-ad0a-858dcb77d496.png)


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
