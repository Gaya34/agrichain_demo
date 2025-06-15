*** Settings *** 
Resource    resources/pom/resultpage/result_page_rsrc.resource


*** Keywords ***
Verify Output Is Correct
    [Documentation]    Verifies that the output text contains the expected substring and length.
    [Arguments]    ${expected_length}
    ${EXPECTED_LENGTH}=    Get Text    id=xpath for result    
    Element Should Contain    ${RESULT_TEXT}    ${EXPECTED_LENGTH}
