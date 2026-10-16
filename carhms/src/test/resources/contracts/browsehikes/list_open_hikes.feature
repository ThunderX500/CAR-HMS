Feature: Lister les randonnees ouvertes
  Commande d'application: BrowseHikes.listOpenHikes
  Cas d'utilisation: Parcourir les randonnees

  Scenario: Un visiteur liste toutes les randonnees ouvertes
    Given le systeme contient des randonnees ouvertes et des randonnees fermees
    When un visiteur demande la liste des randonnees ouvertes
    Then le systeme retourne uniquement les randonnees ouvertes
    And les randonnees sont triees par date croissante
    And chaque randonnee indique son organisateur et son nombre de places restantes

  Scenario: Aucune randonnee ouverte
    Given le systeme ne contient aucune randonnee ouverte
    When un visiteur demande la liste des randonnees ouvertes
    Then le systeme retourne une liste vide
