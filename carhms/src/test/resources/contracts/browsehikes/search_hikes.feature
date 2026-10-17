Feature: Rechercher des randonnees
  Commande d'application: BrowseHikes.searchHikes
  Cas d'utilisation: Parcourir les randonnees

  Scenario: Recherche par nom de sentier
    Given le systeme contient des randonnees ouvertes sur plusieurs sentiers
    When un utilisateur recherche les randonnees sur le sentier "Lac Pink"
    Then le systeme retourne uniquement les randonnees ouvertes sur ce sentier

  Scenario: Recherche par date
    Given le systeme contient des randonnees ouvertes a differentes dates
    When un utilisateur recherche les randonnees du "2026-11-07"
    Then le systeme retourne uniquement les randonnees ouvertes de cette date

  Scenario: Recherche par difficulte
    Given le systeme contient des randonnees ouvertes de differentes difficultes
    When un utilisateur recherche les randonnees de difficulte "modere"
    Then le systeme retourne uniquement les randonnees ouvertes de cette difficulte

  Scenario: Aucun resultat
    Given le systeme ne contient aucune randonnee ouverte correspondant aux criteres
    When un utilisateur lance la recherche
    Then le systeme retourne une liste vide
