# Configure docker DNS and address pools


Create `/etc/docker/daemon.json`


```
{
  "log-driver": "local",
  "dns": ["10.19.16.1", "127.0.0.1"],
  "default-address-pools": [
    {
      "base": "172.18.0.0/16",
      "size": 24
    }
  ]
}
```

