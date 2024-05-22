Feature: Post

  Scenario: Post
  #Background:
   # Given url 'https://jsonplaceholder.typicode.com/'
    * def MyBody =
    """
   {
    firstname: 'Anthony', lastname: 'ODonnell',
    totalprice: 500, depositpaid: true,
    additionalneeds: 'Clearly Defined Requirements',
    bookingdates: { checkin: '2022-08-30', checkout: '2022-09-10' }
  }
    """

    * url 'https://httpbin.org'
    * path '/anything'
    * request MyBody
    * method post
    * assert response.json.firstname == 'Anthony'


