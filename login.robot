*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${URL}    https://www.google.com
${FIREFOX_PROFILE_PATH}   /home/rohullah/snap/firefox/common/.mozilla/firefox/yhg34arx.roh/

*** Test Cases ***
Valid Login
    [Setup]    Open Browser    ${URL}    browser=firefox
    ...    ff_profile_dir=${FIREFOX_PROFILE_PATH}
    Wait Until Page Contains Element    name=q
    Log Browser Console
    [Teardown]    Close Browser With Debug Info

*** Keywords ***
Close Browser With Debug Info
    Log To Console    Trying to close the browser...
    Close Browser
    Log To Console    Browser closed successfully.

Log Browser Console
    ${console_log}=    Get Browser Logs
    Log Many    ${console_log}
