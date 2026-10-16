package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.SendHikeReminderQuery

/**
 * Cas d'utilisation : Envoyer un rappel de randonnee (Send Hike Reminder).
 *
 * Decrit ce qui se produit un jour avant la tenue d'une randonnee.
 */
interface SendHikeReminder {

    /**
     * Envoie un courriel a chaque randonneur ayant une inscription confirmee,
     * avec un avertissement meteorologique si de la pluie ou de la neige est
     * prevue au point de depart du sentier.
     */
    fun sendHikeReminder(query: SendHikeReminderQuery): Any
}
