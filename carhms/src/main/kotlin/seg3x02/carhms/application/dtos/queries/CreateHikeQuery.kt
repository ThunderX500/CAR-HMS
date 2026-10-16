package seg3x02.carhms.application.dtos.queries

import java.time.Duration
import java.time.LocalDate
import java.time.LocalTime

/** Informations saisies par un organisateur pour enregistrer une nouvelle randonnee. */
data class CreateHikeQuery(
    val organizerEmail: String,
    val title: String,
    val description: String,
    val trailName: String,
    val date: LocalDate,
    val startTime: LocalTime,
    val expectedDuration: Duration,
    val signUpDeadline: LocalDate,
    val capacity: Int,
)
