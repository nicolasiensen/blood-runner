Feature: request a blood donation
  In order to save somebody's life
  As an applicant
  I want to request a blood donation

  @omniauth_test
  Scenario: The one where I am signed in
    Given I am on the homepage
    And I follow "Entrar com o Facebook"
    And I check "A+"
    And I fill in "Receptor" with "Luiz Celso Vitória Calheiros"
    And I fill in "Localização" with "Hospital do Coração, Porto Alegre"
    When I press "Pedir ajuda!"
    Then I should be on the last request page
    And I should see "Nícolas Iensen, seu pedido foi publicado. Agora compartilhe com seus amigos!"
    And I should see "Precisa de: A+"
  
  @omniauth_test
  Scenario: The one where I am not signed in
    Given I am on the homepage
    And I check "A+"
    And I fill in "Receptor" with "Luiz Celso Vitória Calheiros"
    And I fill in "Localização" with "Hospital do Coração, Porto Alegre"
    When I press "Pedir ajuda!"
    Then I should be on the last request page
    And I should see "Nícolas Iensen, seu pedido foi publicado. Agora compartilhe com seus amigos!"
    And I should see "Precisa de: A+"

  @omniauth_test
  Scenario: The one where I leave the blood types empty
    Given I am on the homepage
    And I follow "Entrar com o Facebook"
    And I fill in "Receptor" with "Luiz Celso Vitória Calheiros"
    And I fill in "Localização" with "Hospital do Coração, Porto Alegre"
    When I press "Pedir ajuda!"
    Then I should see "Sangue que necessita (selecione pelo menos 1 tipo sanguíneo)"

  @omniauth_test
  Scenario: The one where I leave receptor field blank
    Given I am on the homepage
    And I follow "Entrar com o Facebook"
    And I check "A+"
    And I fill in "Localização" with "Hospital do Coração, Porto Alegre"
    When I press "Pedir ajuda!"
    Then I should see "Receptor (nome completo) não pode ficar em branco"

  @omniauth_test
  Scenario: The one where I leave location field blank
    Given I am on the homepage
    And I follow "Entrar com o Facebook"
    And I check "A+"
    And I fill in "Receptor" with "Luiz Celso Vitória Calheiros"
    When I press "Pedir ajuda!"
    Then I should see "Localização não pode ficar em branco"
