Feature: S'inscrire a une randonnee
  Commande d'application: SignUpForHike.signUpForHike
  Cas d'utilisation: S'inscrire a une randonnee

  Scenario: Inscription confirmee
    Given un randonneur connecte a une adhesion active
    And une randonnee ouverte a au moins deux places libres
    And la difficulte de la randonnee est au plus d'un niveau superieur au niveau d'habilete du randonneur
    When le randonneur confirme son inscription a cette randonnee
    Then le systeme enregistre une inscription au statut confirmee
    And l'heure de l'inscription est consignee
    And la randonnee reste ouverte
    And un courriel de confirmation est envoye au randonneur

  Scenario: La derniere place est prise
    Given un randonneur connecte a une adhesion active
    And une randonnee ouverte n'a plus qu'une seule place libre
    When le randonneur confirme son inscription a cette randonnee
    Then le systeme enregistre une inscription au statut confirmee
    And la randonnee devient complete

  Scenario: Inscription placee en liste d'attente
    Given un randonneur connecte a une adhesion active
    And une randonnee est complete
    When le randonneur confirme son inscription a cette randonnee
    Then le systeme enregistre une inscription au statut en liste d'attente
    And la position du randonneur suit l'ordre des inscriptions
    And un courriel indiquant sa position dans la liste d'attente est envoye au randonneur

  Scenario: Adhesion non active
    Given un randonneur connecte a une adhesion expiree
    And une randonnee ouverte a des places libres
    When le randonneur tente de s'inscrire a cette randonnee
    Then le systeme refuse l'inscription
    And aucune inscription n'est creee

  Scenario: Difficulte trop elevee pour le niveau d'habilete
    Given un randonneur connecte a le niveau d'habilete "debutant"
    And une randonnee ouverte est de difficulte "difficile"
    When le randonneur tente de s'inscrire a cette randonnee
    Then le systeme refuse l'inscription
    And aucune inscription n'est creee

  Scenario: Randonnee fermee
    Given un randonneur connecte a une adhesion active
    And la date limite d'inscription d'une randonnee est passee
    When le randonneur tente de s'inscrire a cette randonnee
    Then le systeme refuse l'inscription
