Feature: Restaurant owner can add to his menu
  As a restaurant owner,
  In order to keep my customers up to date regarding my products
  I would like to be able to make updates to my menu
  
  Background: 
    Given the following categories exists
      | title    |
      | Starters |
    And the following products exists
      | name          | description           | price | category |
      | garlic bread  | garlic, bread, butter | 30    | Starters |
    And the following user exists
      | name | email        | password | admin |
      | John | john@doe.com | password | true  |
    And I visit the landing page
    And I click "Login"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I click "Log in"
  
  Scenario: Owner can add new products in menu [Happy Path]
    When I click "New Product"
    And I fill in "Name" with "Banana pie"
    And I fill in "Description" with "Pie with banana"
    And I fill in "Price" with "65"
    And I choose "Desserts"
    And I click "Create Product"
    Then I visit the landing page
    And I should see "Banana pie" 
   