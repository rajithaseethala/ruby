Feature: Round Trip flight
  Background: Given that user is on kayak website
  Scenario: book a one way trip flight
    When user clicks on one way trip button
    And  enters the details for start location
    And  enters the end location
    And  selects from date
    And  chooses type of class that he wants to travel in
    And  chooses the number of passengers
    Then the available <flights> related to the search will be shown on the next page of kayak website
    And  along with the flight details<no of stops>
    And  <travel> with the <prices> are shown
      |flights|no of stops|travel time|price|
      |spirit |2 stops    |00:-- 00:--|$$$  |
      |justfly|nonstop    |00:-- 00:--|$$$  |
      |American|1 stop    |00:-- 00:--|$$$  |

  Scenario: Given the flight results for one way trip are shown
    When the user selects the times
    And  user selects the stops
    And  user selects the airlines
    And  user selects the airports
    And  user selects the  cabin
    And  user selects the layoverairports
    And  user selects the airports
    And  user selects the booking sites
    Then the results based on the selection results are shown in the same window