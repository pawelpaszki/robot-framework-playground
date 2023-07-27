*** Settings ***
Documentation       This is the basic info about the whole suite
Library             SeleniumLibrary

#Run the script
#robot -d Results Tests/Crm.robot

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test
    [Tags]                  1006    Smoke   Contacts
    #Initialise Selenium
    Set selenium speed      .2s
    Set selenium timeout    10s

    #Open the browser
    log                     Starting the test case
    open browser            https://automationplayground.com/crm/   chrome

    #Resize browser window
    Set window position     x=350   y=200
    Set window size         width=1000  height=600

    sleep                   3s
    close browser

*** Keywords ***

