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


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//