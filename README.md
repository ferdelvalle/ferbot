# telegram_bot

## By Fernando Del Valle

## Introduction

**ferbot** is a simple [Telegram][tgm] bot that recommends you a random dish from a random country's cousine.

## Content

+ Installation.
+ Running.
+ Using within telegram.
+ About the project.
+ Contact.

## Installation

1. Open a terminal.
2. Within the terminal, navigate to the bot's directory

    **In windows by using:**
    ```
    cd directory
    ```
    To go to a directory
    If you don't know the name of a directory, use:
    ```
    dir
    ```
    To see the available directories and files within the one you're currently at.

    **In an unix terminal using:**
    ```
    cd directory
    ```
    To go to a directory
    If you don't know the name of a directory, use:
    ```
    ls
    ```
    To see the available directories and files within the one you're currently at.

3. Install the required gems with **bundler**

    **In windows:**
    ```
    bundle
    ```
    **In a unix terminal:**
    ```
    bundle
    ```

## Running

1. Open a terminal.
2. Within the terminal, navigate to the bot's directory

    **In windows by using:**
    ```
    cd directory
    ```
    To go to a directory
    If you don't know the name of a directory, use:
    ```
    dir
    ```
    To see the available directories and files within the one you're currently at.

    **In an unix terminal using:**
    ```
    cd directory
    ```
    To go to a directory
    If you don't know the name of a directory, use:
    ```
    ls
    ```
    To see the available directories and files within the one you're currently at.

4. Run the bot 

    **In windows:**
    ```
    ruby bot.rb
    ```
    **In a unix terminal:**
    ```
    ruby bot.rb
    ```

5. confirmation 

    **You will see a confirmation message**
    ```
    ferbot up and running
    ```
    Please note that if you close the terminal or shut down the system, the bot will stop working.

## Using the bot in Telegram

  The bot has only three commands
  + /start
  + /food
  + /stop

  **/start**

  This starts the boot, which will greet the user by it's name and provide instructions with two messages.

  ```
  Hello, User let's find you something to eat
  ```

  and

  ```
  Tell me what to do with: 
  /food to get a dish recommendation 
  /stop to finish
  ```


  **/food**

  The bot will recommend a dish from a country.

  ```
  What about Mechoui? It's a great Algerian dish!
  ```


  **/stop**

  The bot will wish the user to enjoy the meal and goodbye with two messages.

  ```
  Enjoy your meal, User!
  ```

  and

  ```
  Goodbye :)
  ```


## About the project

+ Built using [Ruby v 2.6.X][rbl]
+ The editor used was [VS Code][vsc] as IDE
+ Git and Github were used for version control
+ Built using the [telegram-bot-ruby][tbr] gem.
+ This was build as part of [microverse][mvs]'s technical curriculum.
+ Testing was done using [RSpec][rpc]

## Contact

+ Fernando Del Valle - [@fer_dv_](https://twitter.com/@fer_dv_) - ferdelvalle@me.com

[rbl]: https://www.ruby-lang.org/en/
[vsc]: https://code.visualstudio.com/
[tgm]: https://telegram.org/
[mvs]: https://www.microverse.org/
[tbr]: https://github.com/atipugin/telegram-bot-ruby
[rpc]: https://rspec.info/