package seg3x02.carhms.application.dtos.queries

/** Identifie le randonneur dont on recupere les informations actuelles. */
data class HikerDetailsQuery(
    val hikerEmail: String,
    val requestedBy: String,
)
