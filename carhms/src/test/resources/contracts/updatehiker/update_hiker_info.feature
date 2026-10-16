Feature: Mettre a jour les informations d'un randonneur
  Commande d'application: UpdateHiker.updateHikerInfo
  Cas d'utilisation: Mettre a jour un randonneur

  Scenario: Mise a jour reussie
    Given un randonneur connecte est enregistre dans le systeme
    When le randonneur soumet le formulaire avec un nouveau numero de telephone et une nouvelle adresse
    Then le systeme enregistre les nouvelles informations
    And les champs non modifies conservent leur valeur actuelle

  Scenario: Mise a jour du niveau d'habilete
    Given un randonneur connecte a le niveau d'habilete "debutant"
    When le randonneur soumet le niveau d'habilete "intermediaire"
    Then le systeme enregistre le nouveau niveau d'habilete

  Scenario: Informations invalides
    Given un randonneur connecte est enregistre dans le systeme
    When le randonneur soumet le formulaire avec un numero de telephone invalide
    Then le systeme refuse la mise a jour
    And les informations du randonneur restent inchangees

  Scenario: Un randonneur tente de modifier un autre randonneur
    Given un randonneur connecte n'est pas administrateur
    When le randonneur soumet une mise a jour pour un autre randonneur
    Then le systeme refuse la mise a jour
