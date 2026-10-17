# notifications — Gestion des notifications

**Classification : generique**

Livre les messages decides par le coeur du systeme : confirmation d'inscription,
position en liste d'attente, rappel de randonnee, avis d'annulation. L'envoi est
delegue a un service externe de courriel et de notification.

**Justification :** tout systeme doit envoyer des courriels, peu importe son
domaine. Cet envoi est assure par un service externe existant. Le coeur du
systeme decide quoi envoyer ; ce sous-domaine ne fait que livrer les messages.
