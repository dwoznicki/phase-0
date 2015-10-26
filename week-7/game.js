 // Design Basic Game Solo Challenge

// This is a solo challenge
/*
// Your mission description:
    This will be a simple, fantasy style combat simulator. Your hero will
    fight a goblin with 3 basic commands: attack, counter, and magic. Each
    turn you'll choose a command and the goblin will choose one at random.
    The commands work in rock-paper-scissors fashion: attack disrupts magic,
    counter foils attack, and magic ignores counter. Each time you win, you
    get to do damage to the enemy. Your goal is to reduce the enemy's health
    to zero.
// Overall mission:
    Your overall mission is to defeat one goblin for now. I'd like to add some
    another enemy you can work towards, such as a dragon, after beating 3
    goblins, for example. But for now, I'm just concerned with the goblin.
// Goals:
    Your goal is to reduce the goblin's health to zero by beating it in
    rock-paper-scissors style combat.
// Characters:
    My initial characters are going to be your hero and the goblin.
// Objects:
    -your hero: name, health, attack
    -goblin: name, health, attack
// Functions:
    -combat: defines the three commands (attack, counter, and magic) and
    how they interact with one another
    -user attack: takes user input to assign attack
    -enemy attack: randomly chooses command for enemy
    -damage: subtracts attack from enemy health

// Pseudocode
Define object hero = health: 50, attack: 10
Define object goblin = health: 30, attack: 10

Define function combat
Compares hero command and computer command
  IF hero command == enemy command
    round is a tie
  IF hero command == attack
    IF enemy commnad == magic
      do damage to enemy
    ELSE
      do damage to hero
  ELSE IF hero command == counter
    IF enemy command == attack
      do damage to enemy
    ELSE
      do damage to hero
  ELSE IF hero command == magic
    IF enemy command == counter
      do damage to enemy
    ELSE
      do damage to hero
  ELSE
    ask user to input a valid command

Define function enemyCommand
Randomly choose a number 1-3
  IF 1, enemy command = attack
  ELSE IF 2, enemy command = counter
  ELSE enemy command = magic

Define function doDamage
  character1 health - character2 attack

WHILE both hero and goblin have > 0 health, loops
  User input for hero command
  Enemy chooses command
  Run function combat
IF hero's health <= 0, You lose
ELSE, You win
*/

// Initial Code
var hero = {
  name: "Hero",
  health: 50,
  attack: 10
}
var goblin = {
  name: "Goblin",
  health: 30,
  attack: 10
}

function combat(userCommand, enemyCommand) {
  if(userCommand === enemyCommand) {
    console.log("Your combat cancels out!");
  }
  else {
    if(userCommand === "attack") {
      if(enemyCommand === "magic") {
        console.log("Your attack interrupts the enemy's spell!");
        doDamage(hero, goblin);
      }
      else {
        console.log("The enemy counters your attack!");
        doDamage(goblin, hero);
      }
    }
    if(userCommand === "counter") {
      if(enemyCommand === "attack") {
        console.log("You counter the enemy's attack!");
        doDamage(hero, goblin);
      }
      else {
        console.log("The enemy's spell ignores your counter!");
        doDamage(goblin, hero);
      }
    }
    if(userCommand === "magic") {
      if(enemyCommand === "counter") {
        console.log("Your spell ignores the enemy's counter!");
        doDamage(hero, goblin);
      }
      else {
        console.log("The enemy's attack interrupts your spell!");
        doDamage(goblin, hero);
      }
    }
  }
}

function enemyCommand() {
  var choice = Math.floor((Math.random() * 3) + 1);
  if(choice === 1) {
    return "attack";
  }
  else if(choice === 2) {
    return "counter";
  }
  else {
    return "magic";
  }
}

function doDamage(dealer, receiver) {
  receiver.health = receiver.health - dealer.attack;
  console.log(receiver.name + " takes " + dealer.attack + " damage! " + receiver.health + " health remaining.");
}

while(hero.health > 0 && goblin.health > 0) {
  var userCommand = prompt("What do you want to do? attack/counter/magic", "");
  if(userCommand !== "attack" && userCommand !== "counter" && userCommand !== "magic") {
    console.log("Please choose a valid command.");
  }
  else {
    combat(userCommand, enemyCommand());
  }
}
if(hero.health <= 0) {
  console.log("You lose!")
}
else if(goblin.health <= 0) {
  console.log("You win!")
}

// ====================================================================
// Refactored Code
// ====================================================================
var hero = {
  name: "Hero",
  health: 50,
  attack: 10
}
var enemy = {
  name: "Goblin",
  health: 30,
  attack: 10
}

// Allows user to input commands
userControl = true;
var victories = 0;
// Compares commands, prints results, and assigns damage
function combat(userCommand, enemyCommand) {
  if(userCommand === enemyCommand) {
    document.getElementById("text_top").innerHTML ="Your attacks cancels out!";
    document.getElementById("text_mid").innerHTML ="";
  }
  else {
    if(userCommand === "attack") {
      if(enemyCommand === "magic") {
        document.getElementById("text_top").innerHTML ="Your attack interrupts the enemy's spell!";
        doDamage(hero, enemy);
      }
      else {
        document.getElementById("text_top").innerHTML ="The enemy counters your attack!";
        doDamage(enemy, hero);
      }
    }
    if(userCommand === "counter") {
      if(enemyCommand === "attack") {
        document.getElementById("text_top").innerHTML ="You counter the enemy's attack!";
        doDamage(hero, enemy);
      }
      else {
        document.getElementById("text_top").innerHTML ="The enemy's spell ignores your counter!";
        doDamage(enemy, hero);
      }
    }
    if(userCommand === "magic") {
      if(enemyCommand === "counter") {
        document.getElementById("text_top").innerHTML ="Your spell ignores the enemy's counter!";
        doDamage(hero, enemy);
      }
      else {
        document.getElementById("text_top").innerHTML ="The enemy's attack interrupts your spell!";
        doDamage(enemy, hero);
      }
    }
  }
}

// Chooses random number, 1-3, assigns number to enemy command
function enemyCommand() {
  var choice = Math.floor((Math.random() * 3) + 1);
  if(choice === 1) { return "attack"; }
  else if(choice === 2) { return "counter"; }
  else { return "magic"; }
}

// Calculates health loss, prints result
function doDamage(dealer, receiver) {
  receiver.health -= dealer.attack;
  document.getElementById("text_mid").innerHTML = receiver.name + " takes " + dealer.attack + " damage! " + receiver.health + " health remaining.";
}

// Calls combat function when user makes a choice
function userCommand(choice) {
  combat(choice, enemyCommand());
  // Checks if anyone has <= 0 health, prints outcome
  if(hero.health <= 0) {
    document.getElementById("text_bot").innerHTML = "You lose!";
    reset();
    victories = 0;
  } else if(enemy.health <= 0) {
    document.getElementById("text_bot").innerHTML = "You win!";
    victories += 1;
    reset();
  }
}

// Checks for key presses
document.addEventListener('keydown', this.check, false);
// Assigns commands based on keys pressed
function check(e) {
  var code = e.keyCode;
  if (code == 37) {  // "left arrow" key
    if(userControl === true) { userCommand("attack"); }
  } else if (code == 40) {  // "down arrow" key
    if(userControl === true) { userCommand("counter"); }
  } else if (code == 39) {  // "right arrow" key
    if(userControl === true) { userCommand("magic"); }
  }
}

// Resets health, prints number of victories
function reset() {
  // Disallows user commands while game is resetting
  userControl = false;
  hero.health = 50;
  enemy.health = 30;
  document.getElementById("text_bot").innerHTML += " Number of consecutive victories: " + victories;
  setTimeout(function() {
    document.getElementById("text_top").innerHTML = "Game has been reset.";
    document.getElementById("text_mid").innerHTML = "";
    document.getElementById("text_bot").innerHTML = "";
    userControl = true;
  }, 1500);
}


/*
// Reflection
What was the most difficult part of this challenge?

  The most difficult part of this challenge for me was trying to get it to
  run on an HTML page. First, it took me a while to find a reasonable
  solution for printing out the results. Second, I spent a really long time
  trying to add the listener object. The game, in itself, wasn't that hard
  to code since it's basically just rock paper scissors.

What did you learn about creating objects and functions that interact with one another?

  I went through a few iterations of my functions trying to find the optimal
  way to get them working together. I wouldn't say I exactly learned this,
  but putting this all together really showed how important it is to keep
  track of what your function is returning, and how to use that return in
  another function.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

  Yes, I learned about a lot of new methods/functions. The first one I found
  was #document.write, which writes output to the browser window. I quickly
  switched over to document.getElementById("id_tag").innerHTML for text
  output since I could define areas of the page to print the text to. I used
  addEventListener to get commands from the user based on key presses. And
  I used setTimeout to pause the game for a bit while it reset.

How can you access and manipulate properties of objects?

  The simplest way is with dot notation. That is, object.property to access,
  and object.property = value to add or change. I used dot notation to
  update health in my game. You can also use bracket notation, but it wasn't
  quite as convenient here.
*/