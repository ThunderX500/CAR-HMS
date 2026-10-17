package seg3x02.carhms.application.dtos.queries

/** Identifie la randonnee annulee, l'auteur de l'annulation et le motif. */
data class CancelHikeQuery(
    val hikeId: String,
    val cancelledBy: String,
    val reason: String,
)
