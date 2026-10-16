package seg3x02.carhms.application.dtos.queries

/** Identifie le randonneur connecte dont on cherche les randonnees compatibles. */
data class MatchingHikesQuery(
    val hikerEmail: String,
)
