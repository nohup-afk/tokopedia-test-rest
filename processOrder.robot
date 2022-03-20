*** Settings ***
library     String 
Library     RequestLibrary



*** Test Cases ***
Validate date and order status api processOrder
    ${resp}=     GET      /prosessOrder()   
    Should Be Equal As Integers    ${resp.json()['date']}      1642321210439
    Should Be Equal As Strings    ${resp.json()['order_status']}    New
