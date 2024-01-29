Feature: Home Page

Scenario: A user can go to the product details page
    Given I'm an anonymous user on the home page
    When I select one of the products
    Then I'm redirected to the product details page
