
*** Settings ***
Documentation    test case login
Library    SeleniumLibrary


*** Variables ***
${URl}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    
${USERNAME}    Admin
${PASSWORD}    admin123
${USERNAME2}    Admin2
${PASSWORD2}    admin1234


*** Test Cases ***

Valid login
    #1 mở trình duyệtduyệt
    Mở trình duyệt
    #2 Đăng nhập
    Đăng nhập     ${USERNAME}    ${PASSWORD}
    #3 Kiểm tra đăng nhập thành công
    Kiểm tra đăng nhập thành công
    #4 Đóng trình duyệt

Invalid Login
    #1 mở trình duyệtduyệt
    Mở trình duyệt
    #2 Đăng nhập
    Đăng nhập     ${USERNAME2}    ${PASSWORD2}
    #3 Kiểm tra đăng nhập thành công
    Kiểm tra đăng nhập thất bại
    #4 Đóng trình duyệt

*** Keywords ***

Mở trình duyệt
    Open Browser    ${URl}    chrome

Đăng nhập
    [Arguments]    ${USERNAME}    ${PASSWORD}  
    Wait Until Element Is Visible    xpath=//input[@placeholder='Username']    timeout=10
  
    Input Text    xpath=//input[@placeholder='Username']     ${USERNAME}    ${USERNAME2}
    Input Text    xpath=//input[@placeholder='Password']   ${PASSWORD}    ${PASSWORD2}
    Click Button     xpath=//button[@type="submit"]

Kiểm tra đăng nhập thành công
    Wait Until Element Is Visible    xpath=//span[text()="Dashboard"]    timeout=15
    Page Should Contain    Dashboard


Kiểm tra đăng nhập thất bại
    Sleep    2s 
    Page Should Contain    Invalid credentials




