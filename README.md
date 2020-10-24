Pokemon Ditto CLI

This Ruby project will take in an API for attributes for the Pokemon, Ditto and return them to a command line interface.  The url for the API is "https://pokeapi.co/api/v2/pokemon/ditto".  The specific key and values in the API we will be focusing on is for game_indeces.  This will return the game index, version of pokemon game, and url link for that index.  

For this to work you will need to install the pry, JSON and HTTParty gems.  Do this with the following commands in the terminal

gem install pry
gem install json
gem install httparty

To open the CLI project you must enter "git clone https://github.com/jkivlen/pokecli.git" into the terminal.  

To start the project type "ruby bin/run" into the terminal then press enter
You would get a prompt asking if you would like to see Ditto's game indeces.  You can either type yes to continue to any other key to exit.  
When you press yes you will be told "Good choice!" and will receive a numbered list of all the Pokemon games that Ditto appears in.
You will be asking which game number you would like to know more about.  Type in the number for the game in which you would like to learn more about.  If you type a number not listed, you will be asked to type in a number again until you pick a valid number.  
You will then be given the name of the chosen Pokemon game, game index number and game url.
You will then be asked the first question again asking whether you would like to see Ditto's game indeces.  Type yes to continue through the steps again or any key to exit.   

