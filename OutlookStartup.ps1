$STName = "Outlook on Startup"
$STTrigger = New-ScheduledTaskTrigger -AtStartup
$STAction = New-ScheduledTaskAction -Execute "OUTLOOK.EXE"
$STSettings = New-ScheduledTaskSettingsSet -DontStopOnIdleEnd -ExecutionTimeLimit ([TimeSpan]::Zero)
$STPrincipal = New-ScheduledTaskPrincipal -GroupId "BUILTIN\Users" -RunLevel "Highest"

Register-ScheduledTask $STName -Action $STAction -Trigger $STTrigger -Principal $STPrincipal -Settings $STSettings