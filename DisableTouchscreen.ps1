# Disable Touchscreen
Add-Type -AssemblyName System.Windows.Forms

# Create the notification dinger 
$global:balmsg = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balmsg.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
$balmsg.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info


$disable = $Args[0]
$device = Get-PnpDevice | Where-Object {$_.FriendlyName -like '*touch screen*'}

# If no argument, assume toggle
if (-Not $disable) {
	if ($device.ConfigManagerErrorCode -eq "CM_PROB_DISABLED") {
		$disable = '0'
	} else {
		$disable = '1'
	}
}

# Mode Echo
"Disabled: " + $disable

# Enable/Disable touchscreen device
if ($disable -eq '1') {
	$device | Disable-PnpDevice -Confirm:$false
	$tip = "Disabled Touch"
} else {
	$device | Enable-PnpDevice -Confirm:$false
	$tip = "Enabled Touch"
}

#Get and display status message
#$device = Get-PnpDevice | Where-Object {$_.FriendlyName -like '*touch screen*'}
#$tip = $tip + ": " + $device.ConfigManagerErrorCode
$balmsg.BalloonTipText = $tip
$balmsg.Visible = $true
$balmsg.ShowBalloonTip(5000)
