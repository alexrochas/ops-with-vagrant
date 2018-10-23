# Ops provisioning with Vagrant
> How to provision and run an NGINX as a load balancer in Vagrant

## How-to

Run the whole stack with:

```bash
~/path/to/project/$ vagrant up
```

Now test it, should print based on a NGINX round-robin:

```bash
~/path/to/project/$ curl 192.168.33.10:8080
```

The exit will be:

```bash
{"message":"First instance"}
{"message":"Second instance"}
{"message":"First instance"}
{"message":"Second instance"}
```

## Meta

Alex Rocha - [about.me](http://about.me/alex.rochas)
