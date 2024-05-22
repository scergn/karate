Feature: 03ReadJson
  Scenario: ReadJson

    * def MyBody = read('data.json')
    * url 'https://httpbin.org'
    * path '/anything'
    * request MyBody
    * method post
    * assert response.json.lastname == 'Brown'
