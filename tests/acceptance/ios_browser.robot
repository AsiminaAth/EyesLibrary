*** Settings ***
Library     AppiumLibrary
Library     EyesLibrary
Resource    resources/common.robot
Resource    resources/ios.robot
Resource    resources/mobile.robot

*** Variable ***
&{LOGO}     id=hplogo                 xpath=//*[@id="hplogo"]

*** Test Cases ***
Check Window
    [Setup]                                   Setup                                                               iOS Browser - Check Window
    Check Eyes Window                         Window
    [Teardown]                                Teardown

Check Region
    [Setup]                                   Setup                                                               iOS Browser - Check Region
    ${location}=                              Get Element Location                                                ${LOGO.id}
    Check Eyes Region                         ${location['x']}                                                    ${location['y']}                                   300               300              Google Logo
    [Teardown]                                Teardown

Check Region By Element
    [Setup]                                   Setup                                                               iOS Browser - Check Region By Element
    ${logo}=                                  Get Webelement                                                      ${LOGO.id}
    Check Eyes Region By Element              ${logo}                                                             Google Logo
    [Teardown]                                Teardown

Check Region By Selector
    [Setup]                                   Setup                                                               iOS Browser - Check Region By Selector
    Check Eyes Region By Selector             ${LOGO.id}                                                          Google Logo
    [Teardown]                                Teardown

Is Session Open
    [Setup]                                   Setup                                                               iOS Browser - Opened Session
    ${is open}=                               Eyes Session Is Open
    Should Be True                            ${is open}
    [Teardown]                                Teardown

Check Region In Frame By Selector
    [Setup]                                   Setup for Check Region in Frame                                     iOS Browser - Check Region In Frame By Selector
    Check Eyes Region In Frame By Selector    iframeResult                                                        body                                               Frame Elements    tag name
    [Teardown]                                Teardown


*** Keywords ***
Setup
    [Arguments]                               ${test name}
    Open Application                          remote_url=${REMOTE URL}
    ...                                       platformName=${PLATFORM NAME}
    ...                                       platformVersion=${PLATFORM VERSION}
    ...                                       deviceName=${DEVICE NAME}
    ...                                       browserName=Safari
    ...                                       automationName=XCUITest
    Go To Url                                 http://www.google.pt
    Open Eyes Session                         ${API KEY}                                                          EyesLibrary                                        ${test name}      AppiumLibrary    enable_eyes_log=${true}    osname=iOS    browsername=Safari

Setup for Check Region in Frame
    [Arguments]                               ${test name}
    Open Application                          remote_url=${REMOTE URL}
    ...                                       platformName=${PLATFORM NAME}
    ...                                       platformVersion=${PLATFORM VERSION}
    ...                                       deviceName=${DEVICE NAME}
    ...                                       browserName=Safari
    ...                                       automationName=XCUITest
    Go To Url                                 https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_iframe
    Open Eyes Session                         ${API KEY}                                                          EyesLibrary                                        ${test name}      AppiumLibrary    enable_eyes_log=${true}    osname=iOS    browsername=Safari

Teardown
    Close Application
    Close Eyes Session
