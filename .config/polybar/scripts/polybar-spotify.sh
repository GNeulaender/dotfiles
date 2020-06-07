#!/usr/bin/env bash
# Simple spotify script for polybar inspired on 'sp' commands
# https://gist.github.com/wandernauta/6800547

SPOTIFY_PID="$(pidof -s spotify || pidof -s .spotify-wrapped)"

if [[ -z "$SPOTIFY_PID" ]]; then
	  echo ""
	    exit 1
fi

function current {
	eval $(sp eval | grep -E "SPOTIFY_TITLE")
	eval $(sp eval | grep -E "SPOTIFY_ARTIST")
	echo "$SPOTIFY_TITLE | $SPOTIFY_ARTIST"
}

current
