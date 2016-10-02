$EmailFrom = "Mailer <from@mail.com>"
$EmailTo = "to@mail.com" 
$Subject = "hello, world!" 
$Body = "Test mail from powershell" 
$SMTPServer = "smtp.gmail.com" 
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("username", "password"); 
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
