Feature: Enregistrer une certification de chef de randonnee
  Commande d'application: UpdateHiker.registerLeaderCertification
  Cas d'utilisation: Mettre a jour un randonneur

  Scenario: Un administrateur approuve un randonneur comme organisateur
    Given un administrateur est connecte
    And un randonneur n'est pas organisateur de randonnee
    When l'administrateur enregistre un numero de certificat, une date de delivrance, une date d'expiration future et un niveau d'organisateur
    Then le systeme enregistre la certification et le niveau d'organisateur
    And le randonneur devient organisateur de randonnee
    And le randonneur peut creer des randonnees

  Scenario: Dates de certification incoherentes
    Given un administrateur est connecte
    When l'administrateur enregistre une certification dont la date d'expiration precede la date de delivrance
    Then le systeme refuse l'enregistrement
    And le randonneur ne devient pas organisateur de randonnee

  Scenario: Niveau d'organisateur invalide
    Given un administrateur est connecte
    When l'administrateur enregistre une certification avec un niveau d'organisateur qui n'est pas une difficulte connue
    Then le systeme refuse l'enregistrement

  Scenario: Utilisateur non administrateur
    Given un randonneur connecte n'est pas administrateur
    When le randonneur tente d'enregistrer une certification de chef de randonnee
    Then le systeme refuse l'enregistrement
