*** Settings *** 
Library    SeleniumLibrary
Resource    resources/pom/homepage/homepage_rsrc.resource
Resource    resources/pom/resultpage/result_page_rsrc.resource
Resource    resources/resources/browser_setup.resource


*** Test Cases *** 
Verify Longest Substring For abcabcbb
    [Documentation]    This test verifies the longest substring without repeating characters for the input 'abcabcbb'.
    browser_setup.Launch Page    https://agrichain.com
    homepage_rsrc.Enter Input Text    abcabcbb
    homepage_rsrc.Click Submit Button
    result_page_rsrc.Verify Output Is Correct    3
