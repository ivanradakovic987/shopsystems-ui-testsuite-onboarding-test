Feature: CreditCardPurchaseHappyPath
  As a guest user
  I want to make a purchase using Credit Card
  And to verify that purchase was successful

  @woocommerce @test
  Scenario: Purchase as guest customer
    Given I initialize shop system
    And I activate "CreditCard" payment action "pay" in configuration
    When I add some good music to cart
    And I go to checkout
    And I see "Wirecard Credit Card"
    And I fill billing details and place the order
    And I fill "CreditCard" fields in the shop
    Then I see successful payment
    And I see "CreditCard" transaction type "purchase" in transaction table
