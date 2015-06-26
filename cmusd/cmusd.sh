#!/usr/bin/bash
(
  if ! screen -r -D cmus > /dev/null ; then
	screen -S cmus /usr/bin/cmus "$@"
  fi
) | cmus-remote --raw d && cmus-remote --raw player-play
