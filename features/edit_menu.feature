Feature: Restaurant owner can update his menu
  As a restaurant owner,
  In order to keep my customers up to date regarding my products
  I would like to be able to make updates to my menu
  
  Background: 
    Given the following category exists
      | title    |
      | Starters |
    And the following product exists
      | name          | description           | price | category |
      | garlic bread  | garlic, bread, butter | 30    | Starters |
    And the following user exists
      | name | email        | password | admin |
      | John | john@doe.com | password | true  |
    And I am logged in as "John"
    And I visit the landing page
  
  Scenario: Owner can update products in menu [Happy Path]
    When I click "Edit" on garlic bread
    And I fill in "Description" with "garlic with bread"
    And I click "Update Product"
    Then I should see "garlic with bread"