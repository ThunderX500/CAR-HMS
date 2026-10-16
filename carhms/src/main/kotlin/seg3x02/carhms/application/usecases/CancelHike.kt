package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.CancelHikeQuery

/**
 * Cas d'utilisation : Annuler une randonnee (Cancel Hike).
 *
 * Permet a l'organisateur d'une randonnee, ou a un administrateur, d'annuler une
 * randonnee avant son debut en indiquant un motif.
 */
interface CancelHike {

    /**
     * Met le statut de la randonnee a annulee, met toutes les inscriptions
     * confirmees et en liste d'attente a annulees, et avise ces randonneurs du
     * motif.
     */
    fun cancelHike(query: CancelHikeQuery): Any
}
