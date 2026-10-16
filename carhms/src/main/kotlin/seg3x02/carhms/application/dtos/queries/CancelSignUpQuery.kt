package seg3x02.carhms.application.dtos.queries

/** Identifie l'inscription que le randonneur annule. */
data class CancelSignUpQuery(
    val hikerEmail: String,
    val signUpId: String,
)
