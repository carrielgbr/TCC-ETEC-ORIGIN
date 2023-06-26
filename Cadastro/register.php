<?php
class ClientBan { 

    function Banco ($username,$email,$validation) {
        $username = $_POST['username']; 
        $password = $_POST['password'];

        $validation = ["username" => "",
                        "password" => "" ];

        return $validation;                    
    }
}