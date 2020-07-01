*** Settings ***
Library    SeleniumLibrary    




*** Test Cases ***

LoginTest
    [Documentation]    Tester le Login  Logout
    
    Open Browser       https://opensource-demo.orangehrmlive.com/index.php/auth/login      gc
    Set Browser Implicit Wait    5
    Input Text                   id=txtUsername    Admin
    Input Password               id=txtPassword    admin123        
    Click Button                 id=btnLogin    
    Click Element                id=welcome   
    Click Element                link=Logout     
    Log                          Fin du test    