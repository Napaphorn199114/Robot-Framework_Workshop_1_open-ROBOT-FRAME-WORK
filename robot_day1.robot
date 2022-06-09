*** Settings ***
Library    Selenium2Library
*** Variable ***
${expect}    ROBOT FRAME WORK🇺🇦
${url}    https://www.google.co.th/
${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1. เปิดเว็บไซต์ google
    Open Browser    ${url}   ${Browser}
2. กรอกคำว่า Robot Framework
    Input Text    name=q    Robot Framework
    Maximize Browser Window  #ขยายเต็มจอ
    Set Selenium Speed    0.3    #ทำให้เปิดหน้าเว็บช้าลง


3. กดค้นหา
    Click Button    name=btnK
4.คลิ๊กไปที่ Robot Framework
    Click Element    //h3[@class="LC20lb MBeuO DKV0Md"]
5.เช็คหน้าเว็บ
    ${result}    Get Text    //h1[@class="title"]
    Log To Console    ${result}
    #Should Be Equal    ${result}    ${expect}        #ใช้เทียบว่าข้อมูล 2 ตัวแปรมีค่าเหมือนกันหรือไม่

