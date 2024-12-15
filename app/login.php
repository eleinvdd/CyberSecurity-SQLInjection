<?php
// Connessione al database
$conn = new mysqli("localhost", "root", "", "user_db");

// Verifica la connessione
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Ottieni i dati dal form
if (isset($_GET['username']) && isset($_GET['password'])) {
    $username = $_GET['username'];
    $password = $_GET['password'];
 
    // Query vulnerabile a SQL Injection
    $query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";  
    
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        // Login riuscito
        while ($row = $result->fetch_assoc()) {
            echo "Benvenuto, " . $row["username"] . "!<br>";
            echo "Nome: " . $row["nome"] . "<br>";
            echo "Cognome: " . $row["cognome"] . "<br>";
            echo "Dati sensibili: " . $row["dati_sensibili"] . "<br>";
        }
    } else {
        // Login fallito
        echo "Username o password errati.";
    }
}

$conn->close();
?>
