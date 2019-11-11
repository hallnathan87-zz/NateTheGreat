$headers=@{}
$headers.Add("x-rapidapi-host", "matchilling-chuck-norris-jokes-v1.p.rapidapi.com")
$headers.Add("x-rapidapi-key", "f2665afcc6mshab0576163e00de5p150675jsnc2b2eb1582e7")
$headers.Add("accept", "application/json")
$response = Invoke-RestMethod -Uri 'https://matchilling-chuck-norris-jokes-v1.p.rapidapi.com/jokes/random' -Method GET -Headers $headers
$response | Select-Object -Property Value | Out-String
$punchline = $response.Value

Write-Output $punchline

# $headers=@{}
# $headers.Add("x-rapidapi-host", "matchilling-chuck-norris-jokes-v1.p.rapidapi.com")
# $headers.Add("x-rapidapi-key", "f2665afcc6mshab0576163e00de5p150675jsnc2b2eb1582e7")
# $headers.Add("accept", "application/json")
# $response = Invoke-RestMethod -Uri 'https://api.chucknorris.io/jokes/g5WRr5V_T--bxb9XpqLsaA' -Method GET -Headers $headers
# $response | Select-Object -Property Value

Send-MailMessage -From 'hall.nathan@principal.com' -To 'goldenglobes10@gmail.com' -Subject 'Chuck Norris Joke' -Body "Enjoy Today's Chuck Norris Joke: $punchline" -SmtpServer "smtp.principal.com"

