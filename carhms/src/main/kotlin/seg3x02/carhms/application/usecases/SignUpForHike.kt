package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.SignUpForHikeQuery

/**
 * Cas d'utilisation : S'inscrire a une randonnee (Sign Up for Hike).
 *
 * Decrit comment un randonneur ayant une adhesion active se joint a une
 * randonnee ouverte.
 */
interface SignUpForHike {

    /**
     * Inscrit le randonneur a la randonnee : inscription confirmee s'il reste
     * une place, sinon placee en liste d'attente selon l'ordre des inscriptions.
     */
    fun signUpForHike(query: SignUpForHikeQuery): Any
}
