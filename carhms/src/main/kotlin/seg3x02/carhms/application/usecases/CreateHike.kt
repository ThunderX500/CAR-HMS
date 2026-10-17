package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.CreateHikeQuery

/**
 * Cas d'utilisation : Creer une randonnee (Create Hike).
 *
 * Permet a un organisateur de randonnee d'enregistrer une nouvelle randonnee sur
 * un sentier de la CCN.
 */
interface CreateHike {

    /**
     * Valide les informations de la randonnee (sentier permis, date dans la
     * saison d'ouverture, date limite d'inscription a au plus deux semaines,
     * certification et niveau de l'organisateur), attribue un identifiant unique
     * et enregistre la randonnee comme ouverte.
     */
    fun createHike(query: CreateHikeQuery): Any
}
