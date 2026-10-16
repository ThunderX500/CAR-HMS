Feature: Mettre a jour le statut d'adhesion
  Commande d'application: UpdateHiker.updateMembershipStatus
  Cas d'utilisation: Mettre a jour un randonneur

  Scenario: Un administrateur suspend une adhesion
    Given un administrateur est connecte
    And un randonneur a une adhesion active
    When l'administrateur met le statut d'adhesion a "suspendue"
    Then le systeme enregistre le nouveau statut d'adhesion
    And le randonneur ne peut plus s'inscrire a des randonnees

  Scenario: Un administrateur reactive une adhesion
    Given un administrateur est connecte
    And un randonneur a une adhesion expiree
    When l'administrateur met le statut d'adhesion a "active"
    Then le systeme enregistre le nouveau statut d'adhesion
    And le randonneur peut s'inscrire a des randonnees

  Scenario: Statut d'adhesion invalide
    Given un administrateur est connecte
    When l'administrateur soumet un statut d'adhesion qui n'est ni active, ni expiree, ni suspendue
    Then le systeme refuse la mise a jour

  Scenario: Utilisateur non administrateur
    Given un randonneur connecte n'est pas administrateur
    When le randonneur tente de modifier un statut d'adhesion
    Then le systeme refuse la mise a jour
