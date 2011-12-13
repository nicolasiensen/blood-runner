Feature: request a blood donation
  In order to save somebody's life
  As an applicant
  I want to request a blood donation

  @omniauth_test
  Scenario: The one where I am signed in
    Given I am on the homepage
    And I follow "Entrar com o Facebook"
    And I check "A+"
    And I check "A-"
    And I check "O+"
    And I check "O-"
    And I fill in "Receptor" with "Luiz Celso Vitória Calheiros"
    And I fill in "Localização" with "Hospital do Coração, Porto Alegre"
    When I press "Pedir ajuda!"
    Then I should be on the last request page
    And I should see "Seu pedido já está publicado. Agora compartilhe com seus amigos!"

  Scenario: The one where I am NOT signed in
    Given I am on the homepage
    Then I should not see "Conhece alguém que precisa de ajuda?"
