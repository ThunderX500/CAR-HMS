package seg3x02.carhms.application.dtos.queries

import java.time.LocalDate

/**
 * Informations saisies par un membre du club qui s'enregistre comme randonneur.
 *
 * Le nom du tuteur legal est requis seulement si le randonneur a moins de 18 ans.
 */
data class RegisterHikerQuery(
    val invitationCode: String,
    val email: String,
    val password: String,
    val firstName: String,
    val lastName: String,
    val phoneNumber: String,
    val homeAddress: String,
    val dateOfBirth: LocalDate,
    val emergencyContactName: String,
    val emergencyContactPhone: String,
    val skillLevel: String,
    val waiverAccepted: Boolean,
    val legalGuardianName: String? = null,
)
