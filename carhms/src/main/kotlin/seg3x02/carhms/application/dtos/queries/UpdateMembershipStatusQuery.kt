package seg3x02.carhms.application.dtos.queries

/** Nouveau statut d'adhesion attribue par un administrateur. */
data class UpdateMembershipStatusQuery(
    val hikerEmail: String,
    val membershipStatus: String,
    val updatedBy: String,
)
