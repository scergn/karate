Feature: Caller

  Scenario: Caller
    * def Caller = call read('caller/Caller.feature') { id:6914431}
    * assert response.name  == 'Rev. Sheela Achari'
    

