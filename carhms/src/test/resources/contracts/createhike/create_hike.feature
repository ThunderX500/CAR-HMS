Feature: Creer une randonnee
  Commande d'application: CreateHike.createHike
  Cas d'utilisation: Creer une randonnee

  Scenario: Creation reussie
    Given un organisateur de randonnee connecte a une certification valide a la date de la randonnee
    And son niveau d'organisateur est au moins egal a la difficulte du sentier
    And le sentier est un sentier de la CCN sur lequel la randonnee est permise
    And la date de la randonnee se situe dans la saison d'ouverture du sentier
    And la date limite d'inscription ne precede pas de plus de deux semaines la date de la randonnee
    When l'organisateur soumet les informations de la randonnee
    Then le systeme attribue un identifiant unique a la randonnee
    And la randonnee est enregistree avec le statut ouverte
    And la difficulte de la randonnee est celle de son sentier publiee par la CCN
    And l'organisateur ayant cree la randonnee est consigne
    And les randonneurs peuvent s'y inscrire

  Scenario: Sentier ou la randonnee n'est pas permise
    Given un organisateur de randonnee connecte a une certification valide
    And le sentier choisi n'autorise pas la randonnee selon les donnees de la CCN
    When l'organisateur soumet les informations de la randonnee
    Then le systeme refuse la creation
    And aucune randonnee n'est creee

  Scenario: Sentier inexistant dans les donnees de la CCN
    Given un organisateur de randonnee connecte a une certification valide
    And le sentier choisi ne figure pas dans les donnees publiees par la CCN
    When l'organisateur soumet les informations de la randonnee
    Then le systeme refuse la creation

  Scenario: Date hors de la saison d'ouverture du sentier
    Given un organisateur de randonnee connecte a une certification valide
    And la date de la randonnee se situe hors de la saison d'ouverture du sentier
    When l'organisateur soumet les informations de la randonnee
    Then le systeme refuse la creation

  Scenario: Date limite d'inscription trop ancienne
    Given un organisateur de randonnee connecte a une certification valide
    And la date limite d'inscription precede de plus de deux semaines la date de la randonnee
    When l'organisateur soumet les informations de la randonnee
    Then le systeme refuse la creation

  Scenario: Certification expirant avant la date de la randonnee
    Given un organisateur de randonnee connecte dont la certification expire avant la date de la randonnee
    When l'organisateur soumet les informations de la randonnee
    Then le systeme refuse la creation

  Scenario: Niveau d'organisateur insuffisant
    Given un organisateur de randonnee connecte a le niveau d'organisateur "modere"
    And le sentier choisi est de difficulte "tres difficile"
    When l'organisateur soumet les informations de la randonnee
    Then le systeme refuse la creation

  Scenario: Utilisateur qui n'est pas organisateur de randonnee
    Given un randonneur connecte n'est pas organisateur de randonnee
    When le randonneur tente de creer une randonnee
    Then le systeme refuse la creation
