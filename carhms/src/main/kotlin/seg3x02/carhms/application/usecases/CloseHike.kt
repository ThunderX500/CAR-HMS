package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.CloseHikeQuery

/**
 * Cas d'utilisation : Fermer une randonnee (Close Hike).
 *
 * Decrit ce qui se produit lorsque la date limite d'inscription d'une randonnee
 * est atteinte.
 */
interface CloseHike {

    /**
     * Met le statut de la randonnee a fermee, apres quoi aucune inscription ni
     * annulation n'est acceptee.
     */
    fun closeHike(query: CloseHikeQuery): Any
}
