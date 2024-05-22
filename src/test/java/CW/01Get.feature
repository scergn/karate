Feature: GET

  Background:
    Given url 'https://jsonplaceholder.typicode.com/'

  Scenario: GET
    * path '/users'
    * method Get
    * print response[0].name
    * assert response[0].name == 'Leanne Graham'

  Scenario Outline: GET with ID
    * path '/users',<id>>
    * method Get
  #  * assert response.username == 'Bret'
    Examples:
      | id |
      | 1 |
      | 2 |
  Scenario: GET with ID

    * path '/users',1
    * method Get
    * match response contains {"id":1,"name": "Leanne Graham","username": "Bret",}
    * status 200




