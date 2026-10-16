Feature: Fermer une randonnee
  Commande d'application: CloseHike.closeHike
  Cas d'utilisation: Fermer une randonnee

  Scenario: Fermeture d'une randonnee ouverte a sa date limite
    Given une randonnee est ouverte
    And sa date limite d'inscription est atteinte
    When le systeme ferme la randonnee
    Then le statut de la randonnee passe a fermee
    And l'utilisateur ou le processus ayant effectue l'etape est consigne
    And aucune inscription n'est plus acceptee
    And aucune annulation d'inscription n'est plus acceptee

  Scenario: Fermeture d'une randonnee complete a sa date limite
    Given une randonnee est complete
    And sa date limite d'inscription est atteinte
    When le systeme ferme la randonnee
    Then le statut de la randonnee passe a fermee
    And les inscriptions confirmees et en liste d'attente restent inchangees

  Scenario: Date limite non atteinte
    Given une randonnee est ouverte
    And sa date limite d'inscription n'est pas atteinte
    When le systeme tente de fermer la randonnee
    Then le systeme refuse la fermeture
    And la randonnee reste ouverte

  Scenario: Randonnee deja annulee
    Given une randonnee est annulee
    When le systeme tente de fermer la randonnee
    Then le systeme refuse la fermeture
    And la randonnee reste annulee
