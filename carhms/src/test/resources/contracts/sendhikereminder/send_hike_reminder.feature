Feature: Envoyer un rappel de randonnee
  Commande d'application: SendHikeReminder.sendHikeReminder
  Cas d'utilisation: Envoyer un rappel de randonnee

  Scenario: Rappel envoye sans avertissement meteorologique
    Given une randonnee non annulee a lieu dans un jour
    And des randonneurs ont une inscription confirmee a cette randonnee
    And les previsions au point de depart du sentier ne prevoient ni pluie ni neige
    When le systeme envoie le rappel de randonnee
    Then un courriel est envoye a chaque randonneur ayant une inscription confirmee
    And le courriel indique la date, l'heure de depart, le sentier et le point de depart
    And le courriel ne contient aucun avertissement meteorologique

  Scenario: Rappel envoye avec avertissement meteorologique
    Given une randonnee non annulee a lieu dans un jour
    And des randonneurs ont une inscription confirmee a cette randonnee
    And les previsions au point de depart du sentier prevoient de la pluie
    When le systeme envoie le rappel de randonnee
    Then un courriel est envoye a chaque randonneur ayant une inscription confirmee
    And le courriel contient un avertissement meteorologique

  Scenario: Service meteorologique indisponible
    Given une randonnee non annulee a lieu dans un jour
    And des randonneurs ont une inscription confirmee a cette randonnee
    And les previsions ne peuvent pas etre obtenues
    When le systeme envoie le rappel de randonnee
    Then un courriel est envoye a chaque randonneur ayant une inscription confirmee
    And le courriel ne contient aucun avertissement meteorologique

  Scenario: Les randonneurs en liste d'attente ne recoivent pas de rappel
    Given une randonnee non annulee a lieu dans un jour
    And des randonneurs sont en liste d'attente pour cette randonnee
    When le systeme envoie le rappel de randonnee
    Then aucun courriel n'est envoye aux randonneurs en liste d'attente
