package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikeDetailsQuery
import seg3x02.carhms.application.dtos.queries.MatchingHikesQuery
import seg3x02.carhms.application.dtos.queries.SearchHikesQuery

/**
 * Cas d'utilisation : Parcourir les randonnees (Browse Hikes).
 *
 * Permet a un visiteur ou a un utilisateur enregistre de consulter les
 * randonnees ouvertes.
 */
interface BrowseHikes {

    /** Liste toutes les randonnees ouvertes, triees par date. */
    fun listOpenHikes(): List<Any>

    /** Recherche une randonnee ouverte par nom de sentier, date ou difficulte. */
    fun searchHikes(query: SearchHikesQuery): List<Any>

    /**
     * Affiche les informations d'une randonnee, celles de son organisateur et le
     * nombre de places restantes.
     */
    fun viewHikeDetails(query: HikeDetailsQuery): Any

    /**
     * Liste les randonnees ouvertes correspondant au niveau d'habilete du
     * randonneur connecte.
     */
    fun listHikesMatchingSkillLevel(query: MatchingHikesQuery): List<Any>
}
