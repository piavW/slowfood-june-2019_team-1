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
    And I visit the landing page
  
  Scenario: Owner can update products in menu [Happy Path]
    Given I click on "edit"
    Then I should be on "edit" page