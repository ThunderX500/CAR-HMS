package seg3x02.carhms.application.dtos.queries

/**
 * Informations personnelles soumises par un randonneur.
 *
 * Un champ null signifie que la valeur actuelle est conservee.
 */
data class UpdateHikerInfoQuery(
    val hikerEmail: String,
    val firstName: String? = null,
    val lastName: String? = null,
    val phoneNumber: String? = null,
    val homeAddress: String? = null,
    val emergencyContactName: String? = null,
    val emergencyContactPhone: String? = null,
    val skillLevel: String? = null,
)
