# -------------------------------------------------------
# Copyright (c) [2022] Nadege LEMPERIERE
# All rights reserved
# -------------------------------------------------------
# Robotframework test suite to test spike hub status light mock
# -------------------------------------------------------
# Nadège LEMPERIERE, @04 november 2022
# Latest revision: 04 november 2022
# -------------------------------------------------------

*** Settings ***
Documentation   A test case to check hub status light mock functioning
Library         ../keywords/objects.py
Library         ../keywords/scenario.py
Library         Collections

*** Variables ***
${ROTC_JSON_CONF_FILE}           ${data}/rotc.json
${RORT_JSON_CONF_FILE}           ${data}/rort.json
${CPTC_JSON_CONF_FILE}           ${data}/cptc.json
${CPRT_JSON_CONF_FILE}           ${data}/cprt.json
${ROBOT_JSON_CONF_FILE}          ${data}/robot.json

*** Test Cases ***

15.1 Ensure Status Light Is Created With The Required Constants
    [Tags]    StatusLight
    ${scenario}     Create Scenario  ${ROTC_JSON_CONF_FILE}    ${ROBOT_JSON_CONF_FILE}    time
    Start Scenario  ${scenario}
    ${light}        Create Object      StatusLight
    @{members} =    Create List        on    off
    Should Have Members    ${light}    ${members}
    [Teardown]      Reinitialize Scenario      ${scenario}

15.2 Ensure Error Management Is Correctly Implemented
    [Tags]    StatusLight
    ${scenario}     Create Scenario  ${ROTC_JSON_CONF_FILE}    ${ROBOT_JSON_CONF_FILE}  time
    Start Scenario  ${scenario}
    ${light}        Create Object      StatusLight
    Run Keyword And Expect Error    TypeError: color is not a string                    Use Object Method  ${light}     on    False    -1    100.0
    Run Keyword And Expect Error    ValueError: color is not one of the allowed values  Use Object Method  ${light}     on    False    -1    whatever
    [Teardown]      Reinitialize Scenario      ${scenario}

15.3 Test Status Light Behavior On Read Only Time Controlled Scenario
    [Tags]    StatusLight
    ${scenario}        Create Scenario    ${ROTC_JSON_CONF_FILE}    ${ROBOT_JSON_CONF_FILE}  time
    Start Scenario     ${scenario}
    ${light}           Create Object      StatusLight
    Use Object Method  ${light}    on    False    -1    red
    Play Scenario During Steps  1
    ${color}           Use Object Method  ${light}    c_get_color    True
    ${status}          Use Object Method  ${light}    c_get_status    True
    Should Be Equal    ${color}     red
    Should Be Equal    ${status}    True
    Use Object Method  ${light}    off   False    -1
    Play Scenario During Steps  1
    ${color}           Use Object Method  ${light}    c_get_color    True
    ${status}          Use Object Method  ${light}    c_get_status    True
    Should Be Equal    ${color}     red
    Should Be Equal    ${status}    False
    [Teardown]         Reinitialize Scenario      ${scenario}

15.4 Test Status Light Behavior On Read Only Real Time Scenario
    [Tags]    StatusLight
    ${scenario}        Create Scenario    ${RORT_JSON_CONF_FILE}    ${ROBOT_JSON_CONF_FILE}  time
    Start Scenario     ${scenario}
    ${light}           Create Object      StatusLight
    Use Object Method  ${light}    on    False    -1    red
    Sleep              0.1
    ${color}           Use Object Method  ${light}    c_get_color    True
    ${status}          Use Object Method  ${light}    c_get_status    True
    Should Be Equal    ${color}     red
    Should Be Equal    ${status}    True
    Use Object Method  ${light}    off   False    -1
    Sleep              0.1
    ${color}           Use Object Method  ${light}    c_get_color    True
    ${status}          Use Object Method  ${light}    c_get_status    True
    Should Be Equal    ${color}     red
    Should Be Equal    ${status}    False
    [Teardown]         Reinitialize Scenario      ${scenario}

15.5 Test Status Light Behavior On Read Only Time Controlled Scenario
    [Tags]    StatusLight
    ${scenario}        Create Scenario    ${CPTC_JSON_CONF_FILE}    ${ROBOT_JSON_CONF_FILE}  time
    Start Scenario     ${scenario}
    ${light}           Create Object      StatusLight
    Use Object Method  ${light}    on    False    -1    red
    Play Scenario During Steps  1
    ${color}           Use Object Method  ${light}    c_get_color    True
    ${status}          Use Object Method  ${light}    c_get_status    True
    Should Be Equal    ${color}     red
    Should Be Equal    ${status}    True
    Use Object Method  ${light}    off   False    -1
    Play Scenario During Steps  1
    ${color}           Use Object Method  ${light}    c_get_color    True
    ${status}          Use Object Method  ${light}    c_get_status    True
    Should Be Equal    ${color}     red
    Should Be Equal    ${status}    False
    [Teardown]         Reinitialize Scenario      ${scenario}

15.6 Test Status Light Behavior On Read Only Real Time Scenario
    [Tags]    StatusLight
    ${scenario}        Create Scenario    ${CPRT_JSON_CONF_FILE}    ${ROBOT_JSON_CONF_FILE}  time
    Start Scenario     ${scenario}
    ${light}           Create Object      StatusLight
    Use Object Method  ${light}    on    False    -1    red
    Sleep              0.1
    ${color}           Use Object Method  ${light}    c_get_color    True
    ${status}          Use Object Method  ${light}    c_get_status    True
    Should Be Equal    ${color}     red
    Should Be Equal    ${status}    True
    Use Object Method  ${light}    off   False    -1
    Sleep              0.1
    ${color}           Use Object Method  ${light}    c_get_color    True
    ${status}          Use Object Method  ${light}    c_get_status    True
    Should Be Equal    ${color}     red
    Should Be Equal    ${status}    False
    [Teardown]         Reinitialize Scenario      ${scenario}