# MariaDB: Docker vs Manual Install

## Manual Install
 Durată:30 minute
 Pasi: apt install, configurare, user, drepturi, fișiere .cnf
 Control complet, dar consum de timp și potențiale erori
 Greu de replicat pe alt sistem

# Docker Install
 Durată: 1 comandă, ~30 secunde
 Configurare rapidă cu variabile de mediu (user, db, parola)
 Ușor de pornit/oprit cu `docker start/stop`
 Ideal pentru testare rapidă și portabilitate

# Concluzie:
Docker e mult mai rapid și scalabil pentru development. Manualul e bun pentru învățare sau producție cu nevoi speciale
