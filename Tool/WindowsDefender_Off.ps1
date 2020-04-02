Set-ItemProperty -path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -name 'DisableConfig' -type 'Dword' -value 1
Set-ItemProperty -path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -name 'DisableAntiSpyware' -type 'Dword' -value 1

Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\wscsvc' -name 'Start' -type 'Dword' -value 4
Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\SecurityHealthService' -name 'Start' -type 'Dword' -value 4
Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\Sense' -name 'Start' -type 'Dword' -value 4
Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\WdBoot' -name 'Start' -type 'Dword' -value 4
Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\WdFilter' -name 'Start' -type 'Dword' -value 4
Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\WdNisDrv' -name 'Start' -type 'Dword' -value 4
Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc' -name 'Start' -type 'Dword' -value 4
Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend' -name 'Start' -type 'Dword' -value 4