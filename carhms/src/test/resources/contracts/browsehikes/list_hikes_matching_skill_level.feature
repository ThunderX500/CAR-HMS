Feature: Lister les randonnees correspondant au niveau d'habilete
  Commande d'application: BrowseHikes.listHikesMatchingSkillLevel
  Cas d'utilisation: Parcourir les randonnees

  Scenario: Un randonneur connecte voit les randonnees adaptees a son niveau
    Given un randonneur connecte a le niveau d'habilete "intermediaire"
    And le systeme contient des randonnees ouvertes de difficultes variees
    When le randonneur demande les randonnees correspondant a son niveau
    Then le systeme retourne uniquement les randonnees ouvertes dont la difficulte est au plus d'un niveau superieur a son niveau d'habilete

  Scenario: Randonneur sans randonnee adaptee
    Given un randonneur connecte a le niveau d'habilete "debutant"
    And toutes les randonnees ouvertes sont de difficulte "tres difficile"
    When le randonneur demande les randonnees correspondant a son niveau
    Then le systeme retourne une liste vide
