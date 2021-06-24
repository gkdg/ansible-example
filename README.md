In order to access servers through ssh without asking password in ansible use this command: 
``` sudo visudo```

On the openning text editor change this:

```%sudo ALL=(ALL:ALL) ALL```

to this:

```%sudo  ALL=(ALL:ALL) NOPASSWD: ALL```