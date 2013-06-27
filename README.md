# puppet-module-nsswitch #

Puppet module to manage nsswitch.conf

# Compability #

* EL 5/6
* Suse 10, 11
* Solaris 9, 10, 11

# Parameters #

data
----
A hash containing each of the lines in nsswitch.conf.

Example:
{
  'passwd' => 'files nis',
  'group'  => 'files nis',
  'hosts'  => 'files dns',
}

merge_hash
----------
Boolean value. Specifies wheter the module should use the hiera_hash method to allow overriding specific values for a host in hiera. The data will still be loaded from nsswitch::data.

- *Defualt*: False
