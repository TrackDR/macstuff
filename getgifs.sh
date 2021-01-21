chsh -s /bin/bash
cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/1\ Animated\ Emojis

rm gifs.txt
nano gifs.txt
# add url,gifname.gif for each line - no spaces
while IFS=, read -r field1 field2; do curl $field1 -o $field2; done < gifs.txt
