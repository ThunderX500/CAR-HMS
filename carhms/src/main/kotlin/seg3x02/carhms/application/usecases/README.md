# application.usecases

Une interface par cas d'utilisation du CAR-HMS, a l'exception de Sign In,
Sign Out et Generate Trail Usage Report. Chaque interface declare une fonction
par commande d'application derivee du cas d'utilisation.

| Interface          | Cas d'utilisation              | Commandes |
| ------------------ | ------------------------------ | --------- |
| BrowseHikes        | Parcourir les randonnees       | 4         |
| RegisterHiker      | Enregistrer un randonneur      | 1         |
| SignUpForHike      | S'inscrire a une randonnee     | 1         |
| CancelSignUp       | Annuler une inscription        | 2         |
| UpdateHiker        | Mettre a jour un randonneur    | 4         |
| CloseHike          | Fermer une randonnee           | 1         |
| SendHikeReminder   | Envoyer un rappel de randonnee | 1         |
| CreateHike         | Creer une randonnee            | 1         |
| CancelHike         | Annuler une randonnee          | 1         |

Les types de retour sont provisoires (Any) : les DTO de reponse seront
introduits au livrable suivant. Seuls les DTO de requete sont requis ici et se
trouvent dans application.dtos.queries.
