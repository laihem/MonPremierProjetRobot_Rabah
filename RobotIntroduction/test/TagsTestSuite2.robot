*** Settings ***
Library    SeleniumLibrary    


Suite Setup          Log  suite de test Setup    
Suite Teardown       Log  suite de test TearDown    
Test Setup           Log  test Setup
Test Teardown        Log  test TearDown

Default Tags    sanity

*** Test Cases ***

MonPremierTest
    [Tags]    smoke
    Log    je suis le premier test   
    
MonDeuxiemeTest
    Log    je suis le second test  
    Set Tags       regression  
    Remove Tags    regression
    
MonTroisiemeTest
    Log    je suis le troisieme test     
    

