Pokemon Ditto CLI

Description:

This Ruby project will take in an API for attributes for the Pokemon, Ditto and return them to a command line interface.  The url for the API is "https://pokeapi.co/api/v2/pokemon/ditto".  The specific key and values in the API we will be focusing on is for game_indeces.  You will be able to see a list of these game indeces and select the attributes of a specific game name, game url and game index.  

Installation:
For this to work you will need to install the pry, JSON and HTTParty gems.  Do this with the following commands in the terminal

gem install pry
gem install json
gem install httparty

To open the CLI project you must enter "git clone https://github.com/jkivlen/pokecli.git" into the terminal.  

Usage:

To start the project type "ruby bin/run" into the terminal then press enter
You would get a prompt asking if you would like to see Ditto's game indeces.  You can either type yes to continue to any other key to exit.  
When you press yes you will be told "Good choice!" and will receive a numbered list of all the Pokemon games that Ditto appears in.
You will be asking which game number you would like to know more about.  Type in the number for the game in which you would like to learn more about.  If you type a number not listed, you will be asked to type in a number again until you pick a valid number.  
You will then be given the name of the chosen Pokemon game, game index number and game url.
You will then be asked the first question again asking whether you would like to see Ditto's game indeces.  Type yes to continue through the steps again or any key to exit.   

Ditto Image:

https://imgur.com/gallery/AWnkPc2

Support:

Any questions about the CLI can be directed to jimmykivlen@gmail.com

MIT License

Copyright (c) [year] [fullname]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Contributing
Please refer to each project's style and contribution guidelines for submitting patches and additions. In general, we follow the "fork-and-pull" Git workflow.

1 Fork the repo on GitHub
2 Clone the project to your own machine
3 Commit changes to your own branch
4 Push your work back up to your fork
5 Submit a Pull request so that we can review your changes

