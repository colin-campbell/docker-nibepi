# ONLY FOR TEST: Docker container to run nibepi [https://github.com/anerdins/node-red-contrib-nibepi](https://github.com/anerdins/node-red-contrib-nibepi)

## Note: At the moment, this is configured to disable the internal MQTT broker and also to be used with a remote [nibegw](https://github.com/openhab/openhab-addons/tree/main/bundles/org.openhab.binding.nibeheatpump/contrib/NibeGW/Arduino/NibeGW) - **not** to run against the serial port.

Check the file [mods.jq](mods.jq) to modify the default config during build with any values you wish using [jq](https://stedolan.github.io/jq/)

## To test:

- Build container with

```
docker build -t nibepi .
```

- And run with

```
docker run -d --name nibepi -v $PWD/data:/data  -v $PWD/config:/etc/nibepi -p 1880:1880 nibepi
```
