package seg3x02.carhms.application.dtos.queries

/** Identifie la randonnee pour laquelle le rappel est envoye. */
data class SendHikeReminderQuery(
    val hikeId: String,
)
