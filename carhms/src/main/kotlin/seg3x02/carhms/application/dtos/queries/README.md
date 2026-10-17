# application.dtos.queries

DTO de requete utilises pour invoquer les commandes d'application declarees dans
application.usecases. Un DTO par commande, sauf listOpenHikes() qui ne prend
aucun parametre.

| DTO                               | Commande d'application                        |
| --------------------------------- | --------------------------------------------- |
| SearchHikesQuery                  | BrowseHikes.searchHikes                       |
| HikeDetailsQuery                  | BrowseHikes.viewHikeDetails                   |
| MatchingHikesQuery                | BrowseHikes.listHikesMatchingSkillLevel       |
| RegisterHikerQuery                | RegisterHiker.registerHiker                   |
| SignUpForHikeQuery                | SignUpForHike.signUpForHike                   |
| HikerSignUpsQuery                 | CancelSignUp.listHikerSignUps                 |
| CancelSignUpQuery                 | CancelSignUp.cancelSignUp                     |
| HikerDetailsQuery                 | UpdateHiker.viewHikerDetails                  |
| UpdateHikerInfoQuery              | UpdateHiker.updateHikerInfo                   |
| UpdateMembershipStatusQuery       | UpdateHiker.updateMembershipStatus            |
| RegisterLeaderCertificationQuery  | UpdateHiker.registerLeaderCertification       |
| CloseHikeQuery                    | CloseHike.closeHike                           |
| SendHikeReminderQuery             | SendHikeReminder.sendHikeReminder             |
| CreateHikeQuery                   | CreateHike.createHike                         |
| CancelHikeQuery                   | CancelHike.cancelHike                         |

Les valeurs enumerees du domaine (difficulte, niveau d'habilete, niveau
d'organisateur, statut d'adhesion) sont transportees comme String a ce stade;
elles deviendront des types du domaine au livrable suivant.
