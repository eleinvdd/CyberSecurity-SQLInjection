**Analisi di Vulnerabilità SQL Injection con Strumenti di Sicurezza**

**Descrizione del Progetto**

Questo progetto dimostra come identificare, analizzare e sfruttare una vulnerabilità SQL Injection in un ambiente virtuale controllato. Utilizza una macchina con Ubuntu Server (server vulnerabile) e una macchina con Kali Linux (attaccante), impiegando strumenti come SQLmap e Wireshark.

**Requisiti**

- VirtualBox: per eseguire l'applicazione vulnerabile in un ambiente isolato
- Ubuntu Server e Kali Linux
- Strumenti:
  - SQLmap: per automatizzare l'attacco SQL Injection.
  - Wireshark: per sniffare il traffico di rete e analizzare i pacchetti HTTP.

**Le Assunzioni Fatte per l'Attaccante**

**Accesso alla Rete**

- L'attaccante è connesso alla stessa rete locale del server vulnerabile. Questo è reso possibile dalla configurazione della scheda di rete Bridge in VirtualBox.

**Da Dove Parte l'Attacco**

- L'attacco viene eseguito da una macchina virtuale con Kali Linux (kali-linux-2024.3-virtualbox-amd64) ospitata sullo stesso hypervisor (VirtualBox).

**Strumenti a Disposizione dell'Attaccante**

- SQLmap
- Wireshark

**Compiti e Configurazioni del Server Sotto Attacco**

- Sistema Operativo: macchina virtuale con Ubuntu Server (ubuntu-24.04.1-live-server-amd64).
- Servizi Attivi:
  - Apache2: server web per servire la pagina vulnerabile.
  - MySQL: database in cui sono salvati i dati (es. credenziali utenti).
- Applicazione Vulnerabile:
  - Una pagina HTML con un form di login (login.php) vulnerabile a SQL Injection.
- Rete e Accessibilità:
  - Configurazione della rete tramite scheda Bridge in VirtualBox.
  - IP assegnato al server: ad esempio 192.168.1.29.

**Installazione**

**Server Target (Ubuntu)**

1. Installa Apache, PHP e MySQL:  
    sudo apt update  
    sudo apt upgrade -y  
    sudo apt install apache2
    sudo apt install mysql-server
    sudo mysql_secure_installation
    sudo apt install php
    sudo apt php-mysqli
    sudo apt install ssh
3. Carica i file nel server web:  
    Copia i seguenti file nella directory /var/www/html/:
    - login.php
    - create_and_populate_db.sql
    - paginaWeb.html
4. Configura il Database:
    - Accedi a MySQL:  
        sudo mysql -u root -p
    - Seleziona il database (se necessario):  
        USE user_db;
    - Esegui lo script SQL:  
        SOURCE /var/www/html/create_and_populate_db.sql;

**Macchina Attaccante (Kali Linux)**

- SQLmap:  
    È preinstallato in Kali Linux.
- Wireshark:  
    È preinstallato in Kali Linux.

**Uso**

**Identificare ed Esplorare la Vulnerabilità con SQLmap**

Esegui il comando seguente per identificare ed esplorare la vulnerabilità SQL Injection:  
sqlmap -u "<http://192.168.1.29/login.php?username=test&password=test>" + “OPZIONI”

Per ricavare man mano i dati necessari per estrapolare le informazioni contenute nella tabella USER.

**Sniffare il Traffico di Rete con Wireshark**

1. Avvia Wireshark e cattura i pacchetti HTTP.
2. Analizza le richieste e risposte per individuare vulnerabilità e dati sensibili.

**Risultati**

- Dati Estratti con SQLmap:  
    Contenuto completo della tabella users, incluse credenziali e dati personali.
- Traffico HTTP Catturato con Wireshark:  
    Screenshot del traffico HTTP, evidenziando i dati inviati al server.

**Struttura del Repository**

- /app: directory contenente l'applicativo.
- /dump SQLMap: cartella contenente il dump dell'attacco effettuato da sqlmap
- user_db.dmp: dump del database MySQL di esempio.
- README.md: documentazione del progetto.

**Risorse Utili**

- <https://www.sqlmap.org>
- <https://owasp.org/www-community/attacks/SQL_Injection>

**Disclaimer**

Questo progetto è inteso solo per scopi educativi e di ricerca. Non è permesso l'uso di queste tecniche su sistemi non autorizzati. L'autore non si assume alcuna responsabilità per eventuali danni derivanti da un uso improprio.
