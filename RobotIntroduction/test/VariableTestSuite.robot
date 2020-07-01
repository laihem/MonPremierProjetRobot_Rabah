*** Settings ***
Library    SeleniumLibrary    



*** Test Cases ***

LoginTest
    [Documentation]    Tester le Login  Logout
    
    Open Browser       ${URL}      gc
    Set Browser Implicit Wait    5
    LoginKW   
    Click Element                id=welcome   
    Click Element                link=Logout     
    Log                          Fin du test
    Log                          Ce test est execute par  %{username} on %{os}    
    



*** Variables ***
${URL}                https://opensource-demo.orangehrmlive.com/index.php/auth/login
@{CREDENTIALS}        Admin     admin123
&{LOGINDATA}          username=Admin    password=admin123


*** Keywords ***
LoginKW
    Input Text                   id=txtUsername    @{CREDENTIALS}[0]        
    Input Password               id=txtPassword    @{CREDENTIALS}[1]        
    Click Button                 id=btnLogin 
