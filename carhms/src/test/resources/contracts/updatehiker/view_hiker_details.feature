Feature: Consulter les informations d'un randonneur
  Commande d'application: UpdateHiker.viewHikerDetails
  Cas d'utilisation: Mettre a jour un randonneur

  Scenario: Un randonneur consulte ses propres informations
    Given un randonneur connecte est enregistre dans le systeme
    When le randonneur demande ses informations
    Then le systeme retourne ses informations actuelles pour pre-remplir le formulaire

  Scenario: Un administrateur consulte les informations d'un randonneur
    Given un administrateur est connecte
    And un randonneur est enregistre dans le systeme
    When l'administrateur demande les informations de ce randonneur
    Then le systeme retourne les informations actuelles du randonneur, son statut d'adhesion et sa certification s'il en a une

  Scenario: Un randonneur tente de consulter les informations d'un autre randonneur
    Given un randonneur connecte n'est pas administrateur
    When le randonneur demande les informations d'un autre randonneur
    Then le systeme refuse l'acces
