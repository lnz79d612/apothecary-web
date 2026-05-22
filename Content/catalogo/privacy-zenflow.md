---
title: Privacy Policy - ZenFlow
description: Informativa sulla privacy per l'applicazione mobile ZenFlow di Appthecary.
---

# Privacy Policy di ZenFlow
**Ultimo aggiornamento:** 18 Maggio 2026

La presente Privacy Policy descrive le modalità con cui **Appthecary** ("noi", "nostro" o "ci") raccoglie, utilizza e protegge le informazioni degli utenti ("utente" o "tu") all'interno dell'applicazione mobile ZenFlow (l' "Applicazione").

Ci impegniamo a garantire la massima trasparenza e la protezione dei tuoi dati personali finanziari e sensibili.

## 1. Tipologia di Dati Raccolti

### A. Dati Finanziari Personali
L'Applicazione consente di gestire conti, carte di credito, budget e transazioni.
* **Archiviazione Locale:** Tutti i dati finanziari inseriti manualmente dall'utente vengono memorizzati esclusivamente sul dispositivo locale tramite la tecnologia proprietaria di Apple (SwiftData/CoreData). Noi non abbiamo accesso, non raccogliamo e non memorizziamo questi dati su server centrali.

### B. Utilizzo della Fotocamera e Funzione di Scansione AI
L'Applicazione include una funzionalità di scansione degli scontrini per l'analisi intelligente delle spese.
* **Accesso alla Fotocamera:** L'Applicazione richiede il permesso di accedere alla fotocamera esclusivamente per scattare foto dei documenti di spesa.
* **Elaborazione dei Dati:** L'immagine acquisita viene elaborata localmente tramite framework di riconoscimento testo di Apple (Vision) e il testo estratto viene inviato tramite una connessione sicura HTTPS al nostro endpoint backend (`zenflow-backend-vu71.onrender.com`) collegato alle API di Google Gemini per la categorizzazione automatica.
* **Nessuna Conservazione delle Immagini:** Le immagini e i testi degli scontrini non vengono salvati né conservati sul nostro backend dopo il completamento dell'analisi.

### C. Annunci Pubblicitari di Terze Parti (Google AdMob)
L'Applicazione utilizza il servizio di terze parti Google AdMob per mostrare annunci pubblicitari integrati.
Per il funzionamento di AdMob, Google può raccogliere e utilizzare identificatori di tracciamento del dispositivo (come l'IDFA su iOS) e dati di utilizzo per personalizzare degli annunci, nel rispetto delle scelte di consenso dell'utente espresse tramite il modulo di conformità (UMP).

## 2. Base Legale del Trattamento
Trattiamo i tuoi dati esclusivamente sulla base del tuo esplicito consenso:
* Il consenso all'uso della fotocamera e all'invio del testo dello scontrino per l'analisi AI viene richiesto dinamicamente al momento dell'uso.
* Il consenso alla personalizzazione degli annunci pubblicitari viene richiesto all'avvio dell'applicazione tramite il framework per il consenso della privacy (User Messaging Platform).

## 3. Conservazione e Sicurezza dei Dati
* I dati locali sono protetti dai sistemi di sicurezza nativi del sistema operativo iOS.
* Le comunicazioni verso il backend per l'analisi intelligente avvengono esclusivamente tramite protocolli crittografati TLS/SSL (HTTPS).

## 4. Condivisione dei Dati con Terze Parti
Non vendiamo, scambiamo o trasferiamo a terzi i tuoi dati personali, ad eccezione dei fornitori di servizi essenziali per il funzionamento dell'app descritti di seguito:
* **Google Mobile Ads (AdMob):** Per l'erogazione di banner pubblicitari. [Privacy Policy di Google](https://policies.google.com/privacy)
* **Google Gemini API (tramite il nostro backend):** Per l'elaborazione del testo degli scontrini finalizzato alla categorizzazione.

## 5. Diritti dell'Utente (Conformità GDPR)
Poiché tutti i dati principali dell'applicazione risiedono sul tuo dispositivo, hai il pieno ed esclusivo controllo su di essi. Puoi aggiornare, modificare o eliminare definitivamente tutte le informazioni finanziarie in qualsiasi momento semplicemente cancellando i record all'interno dell'app o disinstallando l'Applicazione stessa dal dispositivo.

## 6. Contatti
Per qualsiasi domanda o chiarimento relativo alla presente Privacy Policy, puoi contattarci al seguente indirizzo email:
* **Email di supporto:** support@appthecary.app
