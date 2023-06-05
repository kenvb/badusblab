
#Demo 1, Something easy. Userkey won't be used yet so everything is anonymous
. .\logindata.ps1
$Content    =   Invoke-WebRequest -Uri "https://ipinfo.io/json"
$Title      =   "pastebin1"

$Body = @{ 
    api_dev_key         = $DevKey;
    #    api_user_key        = $UserKey;
    api_paste_name	    = $Title;
    api_paste_code      = $Content;
    api_paste_private   = "0"; # 0=public 1=unlisted 2=private
    api_option          = "paste";
    }

Invoke-WebRequest -Uri "https://pastebin.com/api/api_post.php" -UseBasicParsing -Body $Body -Method Post -OutFile $Title.txt

