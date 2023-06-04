$DevKey     = PUT-DEV-KEY-HERE
$Username   = PUT-PASTEBIN-USERNAME-HERE
$Password   = PUT-PASTEBIN-PASSWORD-HERE
$PasteBinLogin = "https://pastebin.com/api/api_login.php"
$Body = @{ 
    api_dev_key = $DevKey;
    api_user_name	= $Username;
    api_user_password = $Password;
    }

Invoke-WebRequest -Uri $PasteBinLogin -UseBasicParsing -Body $Body -Method Post -OutFile Api_user_key.txt
