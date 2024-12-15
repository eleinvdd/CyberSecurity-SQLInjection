<?php
// Connessione al database
$conn = new mysqli("localhost", "root", "", "user_db");

// Verifica della connessione
if ($conn->connect_error) {
    die("Errore di connessione: riprova più tardi.");
}

// Controllo se i dati sono stati inviati
if (isset($_GET['username']) && isset($_GET['password'])) {
    // Validazione e sanitizzazione degli input
    $username = filter_input(INPUT_GET, 'username', FILTER_SANITIZE_STRING);
    $password = $_GET['password']; // La password sarà verificata tramite hashing, non sanitizzata qui.

    // Preparare la query per prevenire SQL Injection
    $stmt = $conn->prepare("SELECT username, nome, cognome, dati_sensibili, password FROM users WHERE username = ?");
    $stmt->bind_param("s", $username); // "s" indica che il parametro è una stringa

    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Verifica delle credenziali
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['password'])) {
            // Login riuscito
            echo "Benvenuto, " . htmlspecialchars($row["username"]) . "!<br>";
            echo "Nome: " . htmlspecialchars($row["nome"]) . "<br>";
            echo "Cognome: " . htmlspecialchars($row["cognome"]) . "<br>";
            echo "Dati sensibili: " . htmlspecialchars($row["dati_sensibili"]) . "<br>";
        } else {
            // Password errata
            echo "Username o password errati.";
        }
    } else {
        // Nessun utente trovato
        echo "Username o password errati.";
    }

    $stmt->close();
}

$conn->close();
?>
