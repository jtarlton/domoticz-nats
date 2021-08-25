# Running under systemd.

Copy `domoticz.service` to `/etc/systemd/system/`

Copy `domoticz.sh` to `/opt/domoticz/systemd/`

## Enable and start the service
```
systemctl enable domoticz
systemctl start domoticz
```
