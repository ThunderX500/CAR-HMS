Feature: Consulter les details d'une randonnee
  Commande d'application: BrowseHikes.viewHikeDetails
  Cas d'utilisation: Parcourir les randonnees

  Scenario: Consultation d'une randonnee ouverte
    Given une randonnee ouverte existe
    When un utilisateur demande les details de cette randonnee
    Then le systeme retourne le titre, la description, le sentier, la date, l'heure de depart, la duree prevue, la date limite d'inscription et la capacite
    And le systeme retourne les informations de l'organisateur
    And le systeme retourne le nombre de places restantes

  Scenario: Randonnee inexistante
    Given aucune randonnee ne porte l'identifiant demande
    When un utilisateur demande les details de cette randonnee
    Then le systeme signale que la randonnee est introuvable
