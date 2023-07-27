*** Settings ***
Documentation       This is the basic info about the whole suite
Library             SeleniumLibrary

#Run the script
#robot -d Results Tests/Crm.robot

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]                 This is some basic info about the test
    [Tags]                          1006    Smoke   Contacts
    #Initialise Selenium
    Set selenium speed              .2s
    Set selenium timeout            10s

    #Open the browser
    log                             Starting the test case
    open browser                    https://automationplayground.com/crm/   chrome

    #Resize browser window
    Set window position             x=100   y=200
    Set window size                 width=1600  height=1200

    # wait until page contains more appropriate (applies to all)
    page should contain             Customers Are Priority One

    click link                      id=SignIn

    input text                      id=email-id     admin@robot.com
    input text                      id=password     Password1

    click button                    id=submit-id

    page should contain             Our Happy Customers

    click link                      id=new-customer

    page should contain             Add Customer

    input text                      id=EmailAddress     jdoe@robot.com
    input text                      id=FirstName        Jane
    input text                      id=LastName         Doe
    input text                      id=City             Dallas

    select from list by value       id=StateOrRegion    TX

    select radio button             gender     female

    select checkbox                 name=promos-name

    click button                    Submit

    wait until page contains        Success! New customer added

    sleep                   3s
    close browser

*** Keywords ***

