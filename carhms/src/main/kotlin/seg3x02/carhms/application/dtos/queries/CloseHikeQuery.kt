package seg3x02.carhms.application.dtos.queries

/** Identifie la randonnee dont la date limite d'inscription est atteinte. */
data class CloseHikeQuery(
    val hikeId: String,
)
