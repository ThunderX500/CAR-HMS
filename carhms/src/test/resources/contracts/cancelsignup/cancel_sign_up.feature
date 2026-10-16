Feature: Annuler une inscription
  Commande d'application: CancelSignUp.cancelSignUp
  Cas d'utilisation: Annuler une inscription

  Scenario: Annulation d'une inscription confirmee liberant une place dans une randonnee complete
    Given une randonnee est complete
    And un randonneur a une inscription confirmee a cette randonnee
    And au moins un randonneur est en liste d'attente
    When le randonneur confirme l'annulation de son inscription
    Then l'inscription du randonneur passe au statut annulee
    And le premier randonneur de la liste d'attente passe au statut confirmee
    And un courriel est envoye au randonneur promu

  Scenario: Annulation d'une inscription confirmee sans liste d'attente
    Given une randonnee est complete
    And un randonneur a une inscription confirmee a cette randonnee
    And la liste d'attente est vide
    When le randonneur confirme l'annulation de son inscription
    Then l'inscription du randonneur passe au statut annulee
    And la randonnee redevient ouverte

  Scenario: Annulation d'une inscription en liste d'attente
    Given un randonneur a une inscription en liste d'attente
    When le randonneur confirme l'annulation de son inscription
    Then l'inscription du randonneur passe au statut annulee
    And l'ordre des autres randonneurs en liste d'attente est preserve

  Scenario: Date limite d'inscription passee
    Given la date limite d'inscription d'une randonnee est passee
    And un randonneur a une inscription confirmee a cette randonnee
    When le randonneur tente d'annuler son inscription
    Then le systeme refuse l'annulation
    And l'inscription reste confirmee

  Scenario: Inscription appartenant a un autre randonneur
    Given une inscription appartient a un autre randonneur
    When le randonneur tente d'annuler cette inscription
    Then le systeme refuse l'annulation
