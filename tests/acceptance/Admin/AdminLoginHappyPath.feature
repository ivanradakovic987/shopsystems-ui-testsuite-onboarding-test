Feature: AdminLoginHappyPath
  As admin user
  I want to make a successful login to Woocommerce administration interface

  @woocommerce @test
  Scenario: Admin login to administration interface
    Given I initialize shop system
    When I login to admin interface as "admin user"
    Then I see "Howdy, admin" on screen
    