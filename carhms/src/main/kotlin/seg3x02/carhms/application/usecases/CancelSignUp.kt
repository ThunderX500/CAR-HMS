package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.CancelSignUpQuery
import seg3x02.carhms.application.dtos.queries.HikerSignUpsQuery

/**
 * Cas d'utilisation : Annuler une inscription (Cancel Sign-Up).
 *
 * Permet a un randonneur de se retirer d'une randonnee avant sa date limite
 * d'inscription.
 */
interface CancelSignUp {

    /** Liste les inscriptions confirmees et en liste d'attente du randonneur. */
    fun listHikerSignUps(query: HikerSignUpsQuery): List<Any>

    /**
     * Annule l'inscription selectionnee et, si une place confirmee se libere
     * dans une randonnee complete, inscrit le premier randonneur de la liste
     * d'attente.
     */
    fun cancelSignUp(query: CancelSignUpQuery): Any
}
