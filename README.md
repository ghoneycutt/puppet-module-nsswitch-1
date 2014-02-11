# puppet-module-nsswitch #

Puppet module to manage nsswitch.conf

# Compability #

* EL 5/6
* Suse 10, 11
* Solaris 9, 10, 11

# Parameters #

data
----
A hash containing each of the lines in nsswitch.conf. To remove a key from nsswitch, set the value to '-' (see publickey in example)

Example hiera configuration:

<pre>
nsswitch::data:
  automount:   files nis
  ethers:      files nis
  group:       files
  hosts:       files dns
  netgroup:    files nis
  networks:    files nis
  passwd:      files
  printers:    user files nis
  protocols:   files nis
  rpc:         files nis
  publickey:   '-'
  services:    files nis
  shadow:      compat
nsswitch::merge_hash: 'true'

</pre>

merge_hash
----------
Boolean value. Specifies wheter the module should use the hiera_hash method to allow overriding specific values for a host in hiera. The data will still be loaded from nsswitch::data.

- *Defualt*: False
