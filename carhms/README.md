# CAR-HMS — backend (Livrable 1, Groupe 22)

Backend Kotlin / Spring Boot du systeme de gestion des evenements de randonnee du
Cairn (CAR-HMS). Ce livrable contient la structure du domaine, les commandes
d'application, les DTO de requete et les contrats initiaux Cucumber.

    src/main/kotlin/seg3x02/carhms/
      domain/                     un sous-paquetage par sous-domaine, avec README.md
        hikeevents/               coeur
        trails/                   support
        hikers/                   support
        notifications/            generique
        weather/                  generique
      application/
        usecases/                 une interface par cas d'utilisation
        dtos/queries/             DTO de requete des commandes d'application
    src/test/resources/
      contracts/                  une fonctionnalite Cucumber par commande d'application

Sign In, Sign Out et Generate Trail Usage Report sont exclus des interfaces de
cas d'utilisation, conformement a la section 2 de l'enonce du livrable.

Cours: SEG 3502 — Projet CAR-HMS — Groupe 22
Membres: Andrianina Rakotobe, Darcy Joel-Kabura
