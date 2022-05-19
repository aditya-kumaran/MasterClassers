#!/bin/bash

cp 'TEMPLATE.html' 'dune.html'
mv 'dune.html' posts
cd posts
INPUTFILE=dune.html

NAME='Dune (2021)'
GENRES='Sci-fi, Action, Hollywood' # Comma separated
CLASS='Recommendable' # No caps required
SCORE='7.9' # No /10 required

AUDIENCE="Book fans definitely, but really anyone into the genre."

REWATCH="Pretty long and dense, so 8–9 months or so seems reasonable."

WINNER="Duncan Idaho (Jason Momoa)"

COMMENTS="If I had to sum up my take on this one, I’d probably say that the top-notch direction was masterclass-worthy, but the relatively average script kept it from being something really special. The entire movie is a joy to look at—for a relatively limited color palette, Denis Villeneuve does an incredible job crafting beautiful shots that perfectly convey the movie’s scale and overall atmosphere. Visual storytelling and attention to detail is unbelievable too. I’m serious, if it was possible to have a director win one of these, I would absolutely give Villeneuve first place without hesitation. Acting was pretty great across the board, but there weren’t particular standout performances. The narrative structure was a little wonky, probably because this was a part one, and I think that the lack of proper setups and payoffs made it harder to get properly invested in the plot. Pretty great overall though, definitely an impressive adaptation of some weighty source material."

DEFAULT_SPOILERS="Not really spoiler-sensitive."

SPOILERS=$DEFAULT_SPOILERS

URL='https://www.dunemovie.com/assets/gallery/download/DU-T2-0050r.jpg'







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