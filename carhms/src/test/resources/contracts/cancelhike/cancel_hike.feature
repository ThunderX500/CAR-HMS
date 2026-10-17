Feature: Annuler une randonnee
  Commande d'application: CancelHike.cancelHike
  Cas d'utilisation: Annuler une randonnee

  Scenario: Annulation par l'organisateur de la randonnee
    Given une randonnee ouverte n'a pas encore debute
    And son organisateur est connecte
    And des randonneurs ont des inscriptions confirmees et en liste d'attente
    When l'organisateur annule la randonnee en indiquant un motif
    Then le statut de la randonnee passe a annulee
    And toutes les inscriptions confirmees et en liste d'attente passent au statut annulee
    And un courriel indiquant le motif est envoye a ces randonneurs
    And l'utilisateur ayant annule la randonnee est consigne

  Scenario: Annulation par un administrateur
    Given une randonnee complete n'a pas encore debute
    And un administrateur est connecte
    When l'administrateur annule la randonnee en indiquant un motif
    Then le statut de la randonnee passe a annulee
    And toutes les inscriptions passent au statut annulee

  Scenario: Annulation d'une randonnee fermee avant son debut
    Given une randonnee est fermee et n'a pas encore debute
    And son organisateur est connecte
    When l'organisateur annule la randonnee en indiquant un motif
    Then le statut de la randonnee passe a annulee

  Scenario: Randonnee deja debutee
    Given la date et l'heure de depart d'une randonnee sont passees
    When son organisateur tente d'annuler la randonnee
    Then le systeme refuse l'annulation

  Scenario: Motif manquant
    Given une randonnee ouverte n'a pas encore debute
    And son organisateur est connecte
    When l'organisateur tente d'annuler la randonnee sans indiquer de motif
    Then le systeme refuse l'annulation
    And la randonnee reste ouverte

  Scenario: Utilisateur non autorise
    Given une randonnee ouverte n'a pas encore debute
    And un randonneur connecte n'en est ni l'organisateur ni un administrateur
    When le randonneur tente d'annuler la randonnee
    Then le systeme refuse l'annulation
