Feature: Visitor can add to order
  As a visitor,
  In order to select products I want to buy
  I would like to be able to add products to an order

Background: 
  Given the following products exists
  | name          | description                     | price | category        |
  | garlic bread  | garlic, bread, butter           | 30    | Starters        |
  
  Scenario: Visitor can add products to cart
    Given I visit the landing page 
    And I click on "Add to cart"
     