*** Settings ***
Library  ../calculatrice.py

*** Test Cases ***
Addition Test
    [Documentation]    Test d'addition
    ${result}    Addition    5    3
    Should Be Equal As Numbers    ${result}    8

Soustraction Test
    [Documentation]    Test de soustraction
    ${result}    Soustraction    5    3
    Should Be Equal As Numbers    ${result}    2

Multiplication Test
    [Documentation]    Test de multiplication
    ${result}    Multiplication    5    3
    Should Be Equal As Numbers    ${result}    15

Division Test
    [Documentation]    Test de division
    ${result}    Division    6    3
    Should Be Equal As Numbers    ${result}    2

Division Test With Zero
    [Documentation]    Test de division par zero
    ${result}    Division    10    0
    Should Be Equal As Strings    ${result}    Division par 0 impossible
