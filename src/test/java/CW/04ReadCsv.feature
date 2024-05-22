Feature: Read CSV
  Scenario Outline :  Read CSV id =

    * url 'https://gorest.co.in/public/v2/users'
    * path 'id'
    * method Get
    Examples:
    |read('data.csv')|


