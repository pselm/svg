#! /bin/sh

pulp browserify -m Examples.Logo -t build/Logo.js -I examples -j 4 --optimise
pulp browserify -m Examples.Time -t build/Time.js -I examples -j 4 --optimise
