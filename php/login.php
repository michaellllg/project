<?php
// Establish database connection
$con = mysqli_connect("localhost", "root", "", "cjcrsg") or die("Couldn't connect");

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

// Check if email and password are provided in the POST request
if (isset($_POST['email']) && isset($_POST['password'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Query to fetch memberID, roleID, roletype, and name based on provided email and password
    $query = "SELECT a.memberID, r.roletype, m.name 
              FROM accountinfo a
              JOIN accountrole ar ON a.memberID = ar.memberID 
              JOIN role r ON ar.roleID = r.roleID
              JOIN member m ON a.memberID = m.memberID
              WHERE a.email='$email' AND a.password='$password'";

    $result = mysqli_query($con, $query);

    if (mysqli_num_rows($result) == 1) {
        // Authentication successful
        // Retrieve the memberID, roletype, and name
        $row = mysqli_fetch_assoc($result);
        $memberID = $row['memberID'];
        $roletype = $row['roletype'];
        $name = $row['name'];

        // Return success along with memberID, roletype, and name
        echo json_encode(array('success' => true, 'memberID' => $memberID, 'role' => $roletype, 'name' => $name));
    } else {
        // Authentication failed
        echo json_encode(array('success' => false, 'error' => 'Invalid email or password'));
    }
} else {
    // Email or password is not provided
    echo json_encode(array('success' => false, 'error' => 'Email or password is missing'));
}

// Close connection
mysqli_close($con);
?>
