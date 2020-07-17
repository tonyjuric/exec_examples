# exec_examples
Exec resource examples and powershell facts

## exec_eg1
This example is a basic exec resource utilizing best practices. The `onlyif` attribute allows this exec resource to have idempotency and prevent the exec resource from triggering every single time. The `onlyif` attribute also allows the resource to be run in noop mode for simulation or reporting purposes.

## exec_eg2
This example utilises an exec resource in conjunction with a custom/external fact. The exec resource only runs based on the status of the spooler service fact. 

## spooler.ps1
This is a simple custom/external fact to return the status of the Print Spooler service. As it is placed in the `facts.d` directory, this fact will be distributed to every node via pluginsync. This saves you from having to add the fact in manually on the node.
