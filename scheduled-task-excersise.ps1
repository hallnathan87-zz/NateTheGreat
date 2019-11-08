$Trigger= New-ScheduledTaskTrigger -At 10:16am -Daily # Specify the trigger settings
$User= "NT AUTHORITY\SYSTEM" # Specify the account to run the script
$Action= New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "C:\Git\NateTheGreat\task-to-run.ps1" # Specify what program to run and with its parameters
Register-ScheduledTask -TaskName "ExecutingPowerShell" -Trigger $Trigger -Action $Action -RunLevel Highest -Force # Specify the name of the task