*** Settings ***
Library    OperatingSystem

*** Variables ***

*** Test Cases ***
Test HelloWorld
    ${output}=    Run    python helloworld.py

*** Keywords ***
