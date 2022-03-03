# Cypher script for command line

Cypher input string with MD5 or SHA1 algorithm. To add cypher to a terminal add an alias.
For Mac OS Mojave do as follows

1. Make directory for custom commands `mkdir ~/.custom_commands `
2. Change directory `cd ~/.custom_commands `
3. Clone repo into directory ` git clone git@github:Anikram/cypher.git`
4. Add rights `chmod +x ~/.custom_commands/cypher/cypher.rb`
4. Edit .bash_profile ` vi ~/.bash_profile ` ("i" = Enter Edit Mode)
5. Add line `alias="~/.custom_commands/cypher/cypher.rb"`, followed by empty line. ("ESC, ":", "qw", "Enter" = Save and Exit) 
6. Relaunch terminal ad type cypher to start

# Modes
Script has two modes - verbose, which suggests steps to get your hashes and fast. To init verbose path just launch `cypher` command from anywhere from terminal window. To start seconds option just provide first and second arguments, where first argument is an algorithm type ('md5' or 'sha1') and second argument is a word( no spaces )

### Handy for quick random strings to generate a unique id
