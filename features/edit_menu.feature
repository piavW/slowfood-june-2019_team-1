Feature: Restaurant owner can update his menu
  As a restaurant owner,
  In order to keep my customers up to date regarding my products
  I would like to be able to make updates to my menu
  
  Background: 
    Given the following categories exists
      | title         |
      | Starters      |
      | Main Courses  |
      | Desserts      |
    And the following products exists
      | name          | description                     | price | category        |
      | garlic bread  | garlic, bread, butter           | 30    | Starters        |
      | margherita    | cheese, tomato sauce, basil     | 70    | Main Courses    |
      | vesuvio       | cheese, tomato sauce, ham       | 70    | Main Courses    |
      | calzone       | cheese, tomato sauce, ham       | 80    | Main Courses    |
      | ice-cream     | strawberry                      | 40    | Desserts        |
      | ice-cream     | vanilla                         | 40    | Desserts        |
    And the following user exists
      | name | email        | password | admin |
      | John | john@doe.com | password | true  |
    And I click "Login"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I click "Log in"
  
  Scenario: Owner can update products in menu [Happy Path]
    Given I click "Edit"
    Then I should be on "edit" page
    And I fill in "" with ""
    When I click "update"
    Then I should see ""