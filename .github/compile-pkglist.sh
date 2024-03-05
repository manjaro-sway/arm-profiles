#!/bin/bash

cat editions/* | grep -vE '^#' | grep -vE '^$' | sed 's/>\w \+//' | grep -Eo '^[^ ]+' | sort -u | xargs -I % sh -c 'echo % && pactree -us %' | sort -u
