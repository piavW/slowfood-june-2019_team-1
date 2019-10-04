@javascript
Feature: Visitor can review his order
  As a visitor
  In order to see my full order and a total price
  I would like be able to see a list on an order details page

Background: 
  Given the following products exists
  | name         | description           | price | category |
  | garlic bread | garlic, bread, butter | 30    | Starters |
  And the following user exists
  | name | email        | password |
  | John | john@doe.com | password |
  
  Scenario: Visitor can add products to cart
    Given I visit the landing page
    And I click on "Add to cart" on "garlic bread"
    Then I should see "1 item"
    When I click on "Proceed to checkout"
    And I fill in "Enter Email" with "john@doe.com"
    And I fill in "Password" with "password"
    And I click on "Log in with password"
