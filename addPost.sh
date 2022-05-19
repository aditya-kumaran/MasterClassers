#!/bin/bash

cp 'TEMPLATE.html' 'bladeRunner.html'
mv 'bladeRunner.html' posts
cd posts
INPUTFILE=bladeRunner.html

NAME='Blade Runner (1982)'
GENRES='Hollywood, Sci-fi, Thriller' # Comma separated
CLASS='Rewatchable' # No caps required
SCORE='7.1' # No /10 required

AUDIENCE="Adults, realistic future sci-fi enthusiasts."

REWATCH="Probably have to watch it twice to understand. It’s 2h and pretty theoretical though."

WINNER="Roy Batty (Rutger Hauer)"

COMMENTS="So this movie also doesn’t exactly have the right branding for new-comers. I thought this would be a normal dystopian thriller with a charismatic lead in Rick Deckard (Harrison Ford). But it’s really more in line with ethical, speculative science-fiction that isn’t as popular as you’d think. The movie is based around human-like androids called ‘replicants’ having escaped some prison/factory and Rick having to kill them (he’s a space policeman, which they call Blade Runner). So the message here is asking the audience what really differentiates the replicants from humans, if anything - especially given the characters’ vast repulsion with replicants. Roy, Pris (Daryl Hannah), and Rachael (Sean Young) all give great performances, and the end scene from Roy is easily the best and most pronounced scene in the movie. Pacing is pretty slow, and you really have to stick in there to last to the last 20 minutes (the good bit)."

DEFAULT_SPOILERS="Not really spoiler-sensitive."

SPOILERS="So the big question is: Is Rick a replicant? Definitely the right way to go with the movie, and the only way to make this premise interesting. The unicorn motif - I honestly missed this - was a good storytelling device, and the rain speech at the end was wonderful. I just wished they wasted less time. Also Roy’s acting was great, but he kept doing really weird things for no reason (especially in the third act). The conversation between him and Tyrell (Joe Turkel) was good though."

URL='https://cdn.wallpapersafari.com/68/57/PvnA3o.jpg'








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