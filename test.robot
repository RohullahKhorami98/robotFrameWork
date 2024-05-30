*** Settings ***
Library    OperatingSystem
#This is command
*** Test Cases ***
Test HelloWorld
    ${output}=    Run    python helloworld.py
