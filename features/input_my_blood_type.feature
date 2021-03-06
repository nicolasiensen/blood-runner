Feature: input my blood type
  In order to be searchable by my blood type
  As a donor
  I want to input my blood type

  @omniauth_test
  Scenario:
    Given I am on the homepage
    And I follow "Entrar com o Facebook"
    When I press "A+"
    Then I should see "Valeu por informar o seu tipo sanguíneo! Agora podemos encontrar pessoas que precisam da sua ajuda."
    And I should not see "Olá Nícolas Iensen, qual o seu tipo sanguíneo?"
