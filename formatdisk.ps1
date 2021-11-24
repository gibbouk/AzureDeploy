#Setup and Partition Data Disk
Get-Disk | Where PartitionStyle -eq 'Raw' | `
Initialize-Disk -PartitionStyle GPT -PassThru | `
New-Partition -AssignDriveLetter -UseMaximumSize | `
Format-Volume -FileSystem NTFS -NewFileSystemLabel 'Data' -Confirm:$false
