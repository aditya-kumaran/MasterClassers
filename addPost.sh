#!/bin/bash

cp 'TEMPLATE.html' 'blackSwan.html'
mv 'blackSwan.html' posts
cd posts
INPUTFILE=blackSwan.html

NAME='Black Swan (2010)'
GENRES='Drama, Horror, Hollywood' # Comma separated
CLASS='Existent' # No caps required
SCORE='6.2' # No /10 required

AUDIENCE="Adults. People that appreciate ballet, people that like horror."

REWATCH="Never."

WINNER="Lily (Mila Kunis)"

COMMENTS="I swear to god I wasn’t expecting this movie to be so damn scary. Well it was. Straight up, I watched it in the night thinking it was some ballet movie and I had the shock of my life. This is the scariest shit I’ve seen to date, and best believe I’m not watching it again. Of course, there’s a lot of imagery with Nina and Lily and the White and Black Swans, and the whole play is fine. But between Nina’s being crazy and her mom being the weirdest person to live EVER, this movie makes me feel SO UNCOMFORTABLE. But if you like horror and being creeped out and the ballet, then I’m betting you’re going to love this."

DEFAULT_SPOILERS="Not really spoiler-sensitive."

SPOILERS=$DEFAULT_SPOILERS

URL='https://assets3.thrillist.com/v1/image/2924952/1200x600/scale;'








# SCRIPT STUFF: (don't mess with unless it doesn't work)





sed -i "s/INSERT MOVIE NAME (DATE)/$NAME/g" $INPUTFILE

sed -i "s|INSERT IMG URL|$URL|g" $INPUTFILE

sed -i "s/INSERT CLASS/$CLASS/g" $INPUTFILE

sed -i "s/INSERT GENRES/$GENRES/g" $INPUTFILE

sed -i "s/INSERT SCORE/$SCORE/g" $INPUTFILE

sed -i "s/INSERT AUDIENCE/$AUDIENCE/g" $INPUTFILE

sed -i "s/INSERT REWATCH TIME/$REWATCH/g" $INPUTFILE

sed -i "s/INSERT WINNER/$WINNER/g" $INPUTFILE

sed -i "s/INSERT COMMENTS/$COMMENTS/g" $INPUTFILE

sed -i "s/INSERT SPOILERS/$SPOILERS/g" $INPUTFILE

cd ..

MOVIELIST='movielist.html'

LISTING='<!--<div class="post-preview"><a href="posts/TEMPLATE.html"><h3 class="post-subtitle">INSERT MOVIE NAME (YEAR)</h3></a></div><hr>-->'

REPLACEMENT="<!--<div class=\"post-preview\"><a href=\"posts/TEMPLATE.html\"><h3 class=\"post-subtitle\">INSERT MOVIE NAME (YEAR)</h3></a></div><hr>-->\n<div class=\"post-preview\"><a href=\"posts/$INPUTFILE\"><h3 class=\"post-subtitle\">$NAME</h3></a></div><hr>\n"

sed -i "s|$LISTING|$REPLACEMENT|g" $MOVIELIST || echo "not found"