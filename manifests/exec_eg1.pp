class profile::exec_eg1 {
  
  # Basic exec example to start a service using a onlyif attribute to determine whether the service is running before trying to start it.
  # This is the simplest and most effective way to apply an exec resource. The onlyif attribute provides the idempotency required to 
  # maintain the correct state of the resource.
  exec {'start service':
    command  => "start-service Spooler" ,
    provider => 'powershell',
    onlyif   => "if((get-service Spooler).status -eq 'Running'){exit 1}else{exit 0}",
  }
}
