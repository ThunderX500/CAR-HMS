package seg3x02.carhms.application.dtos.queries

import java.time.LocalDate

/**
 * Certification de chef de randonnee et niveau d'organisateur enregistres par un
 * administrateur, ce qui fait du randonneur un organisateur de randonnee.
 */
data class RegisterLeaderCertificationQuery(
    val hikerEmail: String,
    val certificateNumber: String,
    val issueDate: LocalDate,
    val expiryDate: LocalDate,
    val organizerLevel: String,
    val registeredBy: String,
)
