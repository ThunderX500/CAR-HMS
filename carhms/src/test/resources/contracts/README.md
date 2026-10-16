# contracts

Contrats initiaux du CAR-HMS, un par commande d'application declaree dans
seg3x02.carhms.application.usecases. Chaque contrat est une fonctionnalite
Cucumber (.feature) regroupee dans un dossier portant le nom du cas
d'utilisation.

| Dossier            | Contrat                                 | Commande d'application                  |
| ------------------ | --------------------------------------- | --------------------------------------- |
| browsehikes/       | list_open_hikes.feature                 | BrowseHikes.listOpenHikes               |
| browsehikes/       | search_hikes.feature                    | BrowseHikes.searchHikes                 |
| browsehikes/       | view_hike_details.feature               | BrowseHikes.viewHikeDetails             |
| browsehikes/       | list_hikes_matching_skill_level.feature | BrowseHikes.listHikesMatchingSkillLevel |
| registerhiker/     | register_hiker.feature                  | RegisterHiker.registerHiker             |
| signupforhike/     | sign_up_for_hike.feature                | SignUpForHike.signUpForHike             |
| cancelsignup/      | list_hiker_sign_ups.feature             | CancelSignUp.listHikerSignUps           |
| cancelsignup/      | cancel_sign_up.feature                  | CancelSignUp.cancelSignUp               |
| updatehiker/       | view_hiker_details.feature              | UpdateHiker.viewHikerDetails            |
| updatehiker/       | update_hiker_info.feature               | UpdateHiker.updateHikerInfo             |
| updatehiker/       | update_membership_status.feature        | UpdateHiker.updateMembershipStatus      |
| updatehiker/       | register_leader_certification.feature   | UpdateHiker.registerLeaderCertification |
| closehike/         | close_hike.feature                      | CloseHike.closeHike                     |
| sendhikereminder/  | send_hike_reminder.feature              | SendHikeReminder.sendHikeReminder       |
| createhike/        | create_hike.feature                     | CreateHike.createHike                   |
| cancelhike/        | cancel_hike.feature                     | CancelHike.cancelHike                   |

Les definitions de pas (step definitions) et le lanceur Cucumber seront ajoutes
au livrable suivant; les dependances Cucumber sont deja declarees dans
build.gradle.kts.
