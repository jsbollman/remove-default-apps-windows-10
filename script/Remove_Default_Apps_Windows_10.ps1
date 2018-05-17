#Removes default music/photo/video/maps apps in Windows 10 Home/Pro
#I made this script because I got tired of Microsoft replacing my apps every time I upgraded or started over.

#Possible apps:

#  *3dbuilder* -3D Builder
#  *windowsalarms* -Alarms
#  *windowscommunicationapps* -Calendar/Mail
#  *windowscamera* -Camera
#  *zunemusic* -Groove Music
#  *windowsmaps* -Maps
#  *onenote* -OneNote
#  *people* -People
#  *photos* -Photos/Viewer
#  *windowsstore* -The store itself
#  *soundrecorder* -Sound Recorder
#  *xboxapp* -XBOX App

#Try statement protects against any stupid stuff.
#Uncomment what apps you'd like to remove and save the file.


Try {

Get-AppxPackage *zunemusic* | Remove-AppxPackage
Get-AppxPackage *zunevideo* | Remove-AppxPackage
Get-AppxPackage *photos* | Remove-AppxPackage
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
# Get-AppxPackage *3dbuilder* | Remove-AppxPackage
# Get-AppxPackage *windowsalarms* | Remove-AppxPackage
# Get-AppxPackage *windowscommunicationapps* | Remove-AppxPackage
# Get-AppxPackage *windowscamera* | Remove-AppxPackage
# Get-AppxPackage *onenote* | Remove-AppxPackage
# Get-AppxPackage *people* | Remove-AppxPackage
# Get-AppxPackage *windowsstore* | Remove-AppxPackage
# Get-AppxPackage *soundrecorder* | Remove-AppxPackage
# Get-AppxPackage *xboxapp* | Remove-AppxPackage

Write-Host "I have successfully removed your apps."

Read-Host -Prompt "Press Enter to continue"

}
Catch {

Write-Host "Sorry, but I failed to remove your apps."

Read-Host -Prompt "Press Enter to exit."

}
Finally {

#Null

}


