#!/bin/bash

file='sampleFile.txt'
i=1
while read line; do  
  
#Reading each line
#echo "Line No. $i : $line"
num=$(($i%10))

case $num in 1) INPUTNAME="$line"
	INPUTNAME="$(echo "$INPUTNAME"|tr -d '\r')"
	echo " "
	echo $INPUTNAME".html";; esac
case $num in 2) NAME="$line"
	echo $NAME;; esac
case $num in 3) GENRES="$line";; esac
case $num in 4) CLASS="$line";; esac
case $num in 5) SCORE="$line";; esac
case $num in 6) AUDIENCE="$line";; esac
case $num in 7) REWATCH="$line";; esac
case $num in 8) WINNER="$line";; esac
case $num in 9) COMMENTS="$line";; esac
case $num in 0) SPOILERS="$line"
	INPUTFILE=$INPUTNAME".html"
	cp 'TEMPLATE.html' $INPUTFILE
	mv $INPUTFILE posts
	cd posts
	URL='https://lionsgate.brightspotcdn.com/8e/99/2efb94044239be9a67bdc96216f7/five-feet-apart-movies-bg-dsktp-01.jpg'
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

	sed -i "s|$LISTING|$REPLACEMENT|g" $MOVIELIST || echo "not found";; esac
i=$((i+1))  
done < $file

# sleep 3

# INPUTFILE=$INPUTNAME'.html'
# cp 'TEMPLATE.html' $INPUTFILE
# mv $INPUTFILE posts
# cd posts

# NAME='Five Feet Apart (2019)'
# GENRES='Romance, Drama, Hollywood' # Comma separated
# CLASS='Council Class' # No caps required
# SCORE='8.8' # No /10 required

# AUDIENCE="Solo is best, maybe with a quiet friend"

# REWATCH="Once a year"

# WINNER="Stella (Haley Lu Richardson)"

# COMMENTS="Keep tissues on hand: CRYING WARNING. The chemistry between Hayley Lu Richardson and Cole Sprouse is adorable and completely believable - makes the movie. Doesn’t hurt that they’re super attractive, either. Score wasn’t exactly legendary, but it played its part really well, upheld the feels whenever it needed to. Has an incredible amount of heart, and it’ll get you thinking about things you might not think about usually - privilege of being healthy, having the chance to be with others, taking chances, etc. Better to watch alone, or at least with people who don’t talk a lot, so that you can appreciate it."

# DEFAULT_SPOILERS="Not really spoiler-sensitive."

# SPOILERS="Ending messed me up. Straight up. Crying. Ending messed me up. Straight up. Crying. The pool scene was adorable, of course. Abby’s whole existence was alright at first, but a bit annoying later on; I recognize her importance to Stella’s character, so all is forgiven. Poe was much better than I thought he’d be – Moises Arias did a pretty solid job. The nurse’s relationship with her was really sweet, and I think that the youtube highlights were Stella’s opus. Birthday scene was great, and Cole really showed off his acting chops – facial expressions especially. May have been a bit long, but is definitely worth rewatching once a year."

# URL='https://lionsgate.brightspotcdn.com/8e/99/2efb94044239be9a67bdc96216f7/five-feet-apart-movies-bg-dsktp-01.jpg'







# # SCRIPT STUFF: (don't mess with unless it doesn't work)





# sed -i "s/INSERT MOVIE NAME (DATE)/$NAME/g" $INPUTFILE

# sed -i "s|INSERT IMG URL|$URL|g" $INPUTFILE

# sed -i "s/INSERT CLASS/$CLASS/g" $INPUTFILE

# sed -i "s/INSERT GENRES/$GENRES/g" $INPUTFILE

# sed -i "s/INSERT SCORE/$SCORE/g" $INPUTFILE

# sed -i "s/INSERT AUDIENCE/$AUDIENCE/g" $INPUTFILE

# sed -i "s/INSERT REWATCH TIME/$REWATCH/g" $INPUTFILE

# sed -i "s/INSERT WINNER/$WINNER/g" $INPUTFILE

# sed -i "s/INSERT COMMENTS/$COMMENTS/g" $INPUTFILE

# sed -i "s/INSERT SPOILERS/$SPOILERS/g" $INPUTFILE

# cd ..

# MOVIELIST='movielist.html'

# LISTING='<!--<div class="post-preview"><a href="posts/TEMPLATE.html"><h3 class="post-subtitle">INSERT MOVIE NAME (YEAR)</h3></a></div><hr>-->'

# REPLACEMENT="<!--<div class=\"post-preview\"><a href=\"posts/TEMPLATE.html\"><h3 class=\"post-subtitle\">INSERT MOVIE NAME (YEAR)</h3></a></div><hr>-->\n<div class=\"post-preview\"><a href=\"posts/$INPUTFILE\"><h3 class=\"post-subtitle\">$NAME</h3></a></div><hr>\n"

# sed -i "s|$LISTING|$REPLACEMENT|g" $MOVIELIST || echo "not found"