class exec_examples::exec_eg2 {
  # This example uses the status of a custom fact called 'Spooler' to determine if the exec should run. The advantage of this is I can report
  # on the actual status of the service via facter, rather than waiting for the resource to be applied to report on the status. This would 
  # translate better for a setting that you want to base a configuration from.
  case $facts['spooler']{
      'Running': {
        notify{'Service is already running':}
      }
      'Stopped': {
        exec {'start service': 
          command => 'start-service Spooler',
          provider => 'powershell',
        }
      }
      Default: {
        notify{'Not sure on the service status':}
      }
    }
}
