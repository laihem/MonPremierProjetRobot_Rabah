*** Settings ***
Library    SeleniumLibrary    



*** Test Cases ***
MonPremierTest
    Log    Bonjour tout le monde...    
    
MonPremierTestSelenium
    Open Browser    https://www.google.com/  gc
    Set Browser Implicit Wait    5
    Input Text    name=q    automation testing  
    Click Button    name=btnK    
    Sleep    2     
    Close Browser
    Log    Test complet    