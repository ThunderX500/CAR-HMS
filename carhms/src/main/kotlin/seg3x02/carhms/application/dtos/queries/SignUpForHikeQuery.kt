package seg3x02.carhms.application.dtos.queries

/** Identifie le randonneur et la randonnee ouverte a laquelle il s'inscrit. */
data class SignUpForHikeQuery(
    val hikerEmail: String,
    val hikeId: String,
)
