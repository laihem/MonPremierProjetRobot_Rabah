*** Settings ***
Library    SeleniumLibrary    


Suite Setup          Log  suite de test Setup    
Suite Teardown       Log  suite de test TearDown    
Test Setup           Log  test Setup
Test Teardown        Log  test TearDown


*** Test Cases ***

LoginTest
    [Documentation]    Tester le Login  Logout
    
    Open Browser       ${URL}      gc
    Set Browser Implicit Wait    5
    Input Text                   id=txtUsername    @{CREDENTIALS}[0]        #&{LOGINDATA}[username]
    Input Password               id=txtPassword    @{CREDENTIALS}[1]        #&{LOGINDATA}[password]
    Click Button                 id=btnLogin    
    Click Element                id=welcome   
    Click Element                link=Logout     
    Log                          Fin du test

    
UnAutreTest
    Log                          Je suis un autre test   


*** Variables ***
${URL}                https://opensource-demo.orangehrmlive.com/index.php/auth/login
@{CREDENTIALS}        Admin     admin123
&{LOGINDATA}          username=Admin    password=admin123