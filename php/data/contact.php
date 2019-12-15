<?php

//var_dump($_POST['name']);
// var_dump($_GET);

// validate all data

if(empty($_POST)){
    echo "no:(";
    exit;
}

$name = '';
$email= '';
$subject= '';
$message = '';
$recipient = 'luisa.valero19@gmail.com';

if(isset($_POST['name'])){
    $name = filter_var($_POST["name"], FILTER_SANITIZE_STRING);
}

if(isset($_POST['email'])){
    $email = str_replace(array("\r","\n","%0a","%0d"),'', $_POST['email']);
    $email = filter_var($email, FILTER_VALIDATE_EMAIL);
}

if(isset($_POST['subject'])){
    $subject = filter_var($_POST['subject'],FILTER_SANITIZE_STRING);
}

if(isset($_POST['message'])){
    $message = $_POST['message'];
}

//sending out email
$headers = array(
    'From'=>'noreply@test.ca',
    'Reply-To'=>$name.'<'.$email.'>'
);
//if cannot sign up noreply at your domain, get rid of all $headers

if(mail($recipient, $subject, $message, $headers)){
    echo "<p>Thank you for contacting me. I will respond you as soon
    as possible. ".$name."</p>";
}else{
    echo "<p>Huh I'm sorry for the inconvenience; the email did not get it</p>";
}
