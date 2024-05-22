Feature: Google Test
  Scenario: Google
    Given driver 'https://www.google.com'
    And input("[name=q][name=q]", 'karate dsl')
    When submit().click("input[name=btnI]")
    Then waitForUrl('https://github.com/karatelabs/karate')

