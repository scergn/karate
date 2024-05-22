Feature: demo caller
  Scenario: demo caller
    * url 'https://gorest.co.in/public/v2/users'
    * path 'id'
    * method Get
    * assert response.id == id
