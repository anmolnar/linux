# Fingerprint reader


## Install driver

Run

```
ubuntu-drivers list-oem
```

Install any extra package that this command outputs.

## Set up fprintd for sudo

https://askubuntu.com/questions/1015416/use-fingerprint-authentication-not-only-for-login

```
sudo pam-auth-update
```

## Enable/disable fprintd in PAM when laptop lid is opened/closed

Hook laptop lid events and copy `laptop-lid.sh` which will enable/disable fprintd in PAM

```
sudo mkdir -p /etc/acpi/events/
sudo cp laptop-lid /etc/acpi/events
sudo cp laptop-lid.sh /etc/acpi/
```
