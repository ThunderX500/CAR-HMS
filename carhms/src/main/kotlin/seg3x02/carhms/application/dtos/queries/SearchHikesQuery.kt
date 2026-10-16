package seg3x02.carhms.application.dtos.queries

import java.time.LocalDate

/** Criteres de recherche d'une randonnee ouverte. Tous les criteres sont optionnels. */
data class SearchHikesQuery(
    val trailName: String? = null,
    val date: LocalDate? = null,
    val difficulty: String? = null,
)
