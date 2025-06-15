*** Settings ***
Documentation    browser configuration Keywords
Library    PlaywrightCluster
Variables    PlaywrightCluster.data_types


*** Keywords ***
Launch Page
    [Documentation]    To Launch Page
    [Arguments]    ${URL}
    PlaywrightCluster.New Page    ${URL}
