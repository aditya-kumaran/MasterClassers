#!/bin/bash

INPUTFILE=starIsBorn.html
NAME='A Star is Born (2018)'

MOVIELIST='movielist.html'

LISTING='<!--<div class="post-preview"><a href="posts/TEMPLATE.html"><h3 class="post-subtitle">INSERT MOVIE NAME (YEAR)</h3></a></div><hr>-->'

REPLACEMENT="<!--<div class=\"post-preview\"><a href=\"posts/TEMPLATE.html\"><h3 class=\"post-subtitle\">INSERT MOVIE NAME (YEAR)</h3></a></div><hr>-->\n<div class=\"post-preview\"><a href=\"posts/$INPUTFILE\"><h3 class=\"post-subtitle\">$NAME</h3></a></div><hr>\n"

echo $REPLACEMENT

sed -i "s|$LISTING|$REPLACEMENT|g" $MOVIELIST || echo "not found"
sleep 5
