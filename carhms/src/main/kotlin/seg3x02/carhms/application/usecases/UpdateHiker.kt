package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikerDetailsQuery
import seg3x02.carhms.application.dtos.queries.RegisterLeaderCertificationQuery
import seg3x02.carhms.application.dtos.queries.UpdateHikerInfoQuery
import seg3x02.carhms.application.dtos.queries.UpdateMembershipStatusQuery

/**
 * Cas d'utilisation : Mettre a jour un randonneur (Update Hiker).
 *
 * Permet a un randonneur de mettre a jour ses informations, et a un
 * administrateur de mettre a jour le statut d'adhesion ou d'enregistrer une
 * certification de chef de randonnee.
 */
interface UpdateHiker {

    /** Recupere les informations actuelles du randonneur pour le formulaire. */
    fun viewHikerDetails(query: HikerDetailsQuery): Any

    /** Met a jour les informations personnelles du randonneur. */
    fun updateHikerInfo(query: UpdateHikerInfoQuery): Any

    /** Met a jour le statut d'adhesion (active, expiree, suspendue). */
    fun updateMembershipStatus(query: UpdateMembershipStatusQuery): Any

    /**
     * Enregistre une certification de chef de randonnee et un niveau
     * d'organisateur, ce qui fait du randonneur un organisateur de randonnee.
     */
    fun registerLeaderCertification(query: RegisterLeaderCertificationQuery): Any
}
