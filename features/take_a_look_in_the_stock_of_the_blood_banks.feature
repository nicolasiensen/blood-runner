Feature: take a look in the stock of the blood banks
  In order to decide where to donate blood
  As a donor
  I want to take a look in the stock of the blood banks

  Scenario:
    Given there is a bank called "Santa Casa" with 20% O- 50% O+ 60% A- 10% B- 30% A+ 20% B+ 10% AB- 3% AB+
    When I go to the homepage
    Then I should see "Santa Casa"
    And I should see "O- 20%"
    And I should see "O+ 50%"
    And I should see "A- 60%"
    And I should see "B- 10%"
    And I should see "A+ 30%"
    And I should see "B+ 20%"
    And I should see "AB- 10%"
    And I should see "AB+ 3%"
