package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.RegisterHikerQuery

/**
 * Cas d'utilisation : Enregistrer un randonneur (Register Hiker).
 *
 * Permet a un membre du club de s'enregistrer comme randonneur a l'aide d'un
 * code d'invitation recu des administrateurs.
 */
interface RegisterHiker {

    /**
     * Enregistre un nouveau randonneur avec une adhesion active, apres
     * validation du code d'invitation et acceptation de la decharge de
     * responsabilite.
     */
    fun registerHiker(query: RegisterHikerQuery): Any
}
