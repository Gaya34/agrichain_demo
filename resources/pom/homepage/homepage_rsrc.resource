*** Settings *** 
Library    SeleniumLibrary 

*** Variables ***
${INPUT_FIELD}    locator_for_input_field
${SUBMIT_BUTTON}    locator_for_submit_button


*** Keywords *** 
Enter Input Text
    [Documentation]    Enters the specified text into the input field
    [Arguments]    ${text}
    Input Text    ${INPUT_FIELD}    ${text} 

Click Submit Button
    [Documentation]    Clicks the submit button 
    Click Button    ${SUBMIT_BUTTON} 
