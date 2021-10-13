Get-WmiObject -Class Win32_LogicalDisk | 
    Select-Object -Property DeviceID, VolumeName, @{
       label='Espace disponible'
       expression={($_.FreeSpace/1GB).ToString('F2')}
    }