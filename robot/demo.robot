*** Settings ***
Library   Selenium2Library

*** Variables ***

*** Testcases ***
Search JCSSE2016
    Open Browser goto google
    Input keywords "JCSSE2016"
    Enter search
    Missing jcsse2016.cs.kku.ac.th

*** Keywords ***
Missing jcsse2016.cs.kku.ac.th
    Wait Until Page Contains    jcsse2016.cs.kku.ac.th
Open Browser goto google
    Open Browser    http://google.com
Enter search
    Click Button    btnG
Input keywords "JCSSE2016"
    Input Text    lst-ib    JCSSE2016xxxxx
