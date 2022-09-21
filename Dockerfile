FROM nodered/node-red

MAINTAINER Colin Campbell <steenhive@gmail.com>

ENV NODE_ENV=production

ENV TZ="Europe/Stockholm"

USER root

RUN mkdir -p /etc/nibepi && chown -R node-red:node-red /etc/nibepi

COPY --chown=node-red:node-red --chmod=744 entrypoint.sh .

# Modifications to the default config.
COPY  --chown=node-red:node-red mods.jq .

RUN apk update && apk add --no-cache jq tini && apk upgrade --no-cache

USER node-red

RUN npm install github:colin-campbell/node-red-contrib-nibepi#container-fixes --omit=dev --unsafe-perm --no-update-notifier --no-fund


ENTRYPOINT ["/sbin/tini", "--", "./entrypoint.sh"]


