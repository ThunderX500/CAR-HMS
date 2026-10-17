Feature: Enregistrer un randonneur
  Commande d'application: RegisterHiker.registerHiker
  Cas d'utilisation: Enregistrer un randonneur

  Scenario: Enregistrement reussi d'un membre majeur
    Given un code d'invitation valide et non utilise a ete emis pour le courriel "ava@example.com"
    And aucun randonneur n'est enregistre avec ce courriel
    When le membre soumet ce code, des informations de randonneur valides et accepte la decharge de responsabilite
    Then le systeme enregistre le nouveau randonneur avec une adhesion active
    And le code d'invitation devient utilise
    And le randonneur peut s'inscrire a des randonnees

  Scenario: Enregistrement d'un membre mineur avec tuteur legal
    Given un code d'invitation valide et non utilise a ete emis pour le courriel du membre
    And la date de naissance du membre indique qu'il a moins de 18 ans
    When le membre soumet ses informations et le nom du tuteur legal qui accepte la decharge
    Then le systeme enregistre le nouveau randonneur avec une adhesion active
    And le nom du tuteur legal est consigne

  Scenario: Decharge non acceptee par un mineur
    Given un code d'invitation valide et non utilise a ete emis pour le courriel du membre
    And la date de naissance du membre indique qu'il a moins de 18 ans
    When le membre soumet ses informations sans le nom d'un tuteur legal
    Then le systeme refuse l'enregistrement
    And le code d'invitation reste non utilise

  Scenario: Code d'invitation inexistant
    Given aucun code d'invitation ne correspond au code saisi
    When le membre soumet ses informations
    Then le systeme refuse l'enregistrement
    And aucun randonneur n'est cree

  Scenario: Code d'invitation deja utilise
    Given un code d'invitation a deja ete utilise
    When le membre soumet ce code et ses informations
    Then le systeme refuse l'enregistrement
    And aucun randonneur n'est cree

  Scenario: Code d'invitation ne correspondant pas au courriel saisi
    Given un code d'invitation valide a ete emis pour le courriel "ava@example.com"
    When le membre soumet ce code avec le courriel "rio@example.com"
    Then le systeme refuse l'enregistrement
    And le code d'invitation reste non utilise
