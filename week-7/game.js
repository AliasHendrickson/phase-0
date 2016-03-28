// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Fight some goblins, loot their bodies, raid a shop
// Goals: Collect gold, find the goblin king
// Characters: Blaise the Bloodthirsty, Goblin King, Goblin Goon, Shopmaster
// Objects: Each character, bad guys
// Functions: Fight, Heal, Raid/Interrogate/Intimidate

// Pseudocode
//Create Blaise, Goblin goons, Goblin King, and Shopmaster
//Give characters health, gold, information(?), stats
//Create fight and raid functions
//Welcome users to game
//Give choice of fight or raid, ask for input
//Call functions according to their choice
//Functions will update according to player stats
//Give choices again

// Initial Code
var Blaise = {
  name: "Blaise the Bloodthirsty",
  health: 10,
  gold: 0,
  damage: 5,
  exp: 0,
  level: 1,
}

function enemy(name, health, gold, damage) {
  this.name = name;
  this.health = health;
  this.gold = gold;
  this.damage = damage;
}

var Goon = new enemy("Goblin Goon", 7, 10, 3);
var King = new enemy("Goblin King", 1000, 100, 7);
var Shopmaster = new enemy("Shopmaster", 3, 0, 1);

function fight(player, enemy) {
  console.log(player.name + " attacks " + enemy.name + "!");
  console.log(player.name + " dealt " + player.damage + " damage to " + enemy.name + "!");
    enemy.health = enemy.health - player.damage;
    if (enemy.health > 0) {
      console.log(enemy.name + " attacks " + player.name + "!");
      console.log(enemy.name + " dealt " + enemy.damage + " damage to " + player.name + "!");
      player.health = player.health - enemy.damage;

      if (player.health == 0) {
        console.log("YOU ARE DEAD, GAME OVER");
      }
    }
    else {
      console.log(player.name + " slayed " + enemy.name + " and stole " + enemy.gold + " gold" + "!");
      player.gold = player.gold + enemy.gold;
      console.log(player.name + " has " + player.gold + " gold ");
    }
    if (player.health > 0 && enemy.health > 0) {
      fight(player, enemy);
    }

}

function raid(player, enemy) {
  console.log(player.name + " raids the shop and attacks " + enemy.name + ".");
  console.log(player.name + " steals " + enemy.gold + " gold and gains " + enemy.health - 1 + ".");
  player.health = player.health + enemy.health - 1;
  player.gold = player.gold + enemy.gold;

  if (player.gold > 100) {
    console.log(enemy.name + " says, 'You have beaten me silly more times than I can remember. You have stolen my gold, and robbed me of my dignity. Now I see you are battle hardened with a full purse, and I have a proposition for you. Give me your gold, and I will lead you to the Goblin King. What say you?'");
    var answer = prompt("Yes or No?");
      if (answer == "yes") {
        player.stat = 999999;
        player.gold = 0;
      }
      else {
        console.log("Coward! You will never be great unless you slay the king!");
      }
  }
  console.log(player.name + " has " + player.gold + " gold.");
}


console.log("Welcome to the Goblin Raid");
while (true) {
var answer = prompt("Hello mighty Blaise, is it time to fight or raid?");
  if (answer == "fight") {
  fight(Blaise, new enemy("Goblin Goon", 7, 10, 3));
  }
  else if (answer == "raid") {
    raid(Blaise, new enemy("Shopmaster", 3, 25, 1));
  }
}
// Refactored Code






// Reflection
//**What was the most difficult part of this challenge?**
//  The most difficult part of this challenge was not getting ahead of myself. I love games, and I wanted to make the mechanics more and more in depth as I went along, but I had to restrain myself in order to get it done.
//**What did you learn about creating objects and functions that interact with one another?**
//  I learned that there are a lot of possibilities, and a lot of unforeseen things that come up when objects interact with each other.
//**Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?**
//
//**How can you access and manipulate properties of objects?**
//  I added and subtracted properties with integer values. I also compared properties in conditional statements.
//
//
//