# Allows modification to the default config on first install.
# example filter if you don't have a serial port, such as when running on mac (comment to disable):
.connection.enable = "nibegw" |
.serial.port = "10.10.10.10" |
.mqtt.enable = "false" |
.log.enable = "false" |
.log.debug = "false"

# Uncomment this (and comment others) to pass the config unchanged
#.
