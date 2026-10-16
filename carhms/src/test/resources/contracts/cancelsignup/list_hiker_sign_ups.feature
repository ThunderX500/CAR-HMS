Feature: Lister les inscriptions d'un randonneur
  Commande d'application: CancelSignUp.listHikerSignUps
  Cas d'utilisation: Annuler une inscription

  Scenario: Le randonneur consulte ses inscriptions annulables
    Given un randonneur connecte a des inscriptions confirmees, en liste d'attente et annulees
    When le randonneur demande la liste de ses inscriptions
    Then le systeme retourne ses inscriptions confirmees et en liste d'attente
    And les inscriptions deja annulees ne sont pas retournees

  Scenario: Aucune inscription
    Given un randonneur connecte n'a aucune inscription
    When le randonneur demande la liste de ses inscriptions
    Then le systeme retourne une liste vide
