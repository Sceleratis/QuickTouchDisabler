set script="%~dp0DisableTouchscreen.ps1"
set command="Start-Process -Verb RunAs powershell.exe -Args \"-executionpolicy bypass -command %script%\""

powershell -ExecutionPolicy -Bypass -Command %command%