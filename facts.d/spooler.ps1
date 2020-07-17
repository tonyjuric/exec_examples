$x = get-service Spooler
$status = "Spooler="+$x.Status
write-host $status 
