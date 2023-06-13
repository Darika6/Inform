"The Haunted Mansion" by Daria Sambar

Release along with a website.
Release along with an interpreter.

Use scoring.
When play begins:
	now the left hand status line is
		"[the player's surroundings] / [turn count] / [score]";
		increase the score by 20;
	now the right hand status line is "Time: [time of day]";
	
	
Every turn:
	if score is 0:
		end the story saying "You have died from poison!";
		

Book - Generalities
	
Section - Establishing Rooms And Regions

The Mansion is a region.
The Long Hallway is a room in Mansion. 
The Library is a room in Mansion. 
The Bedroom is a room in Mansion. 
The Art room is a room in Mansion.

The description of Long Hallway is "The spooky silence is the first thing you hear when entering. A large amount of dust and cobwebs suggests that no one has set foot here for a long time. The hallway runs from east to west. In the north wall are three doors.". 

Red door is scenery in the Hallway. "Faded red color is noticeable at the first door in the hallway." 
Understand "red", "red door" and "first door" as red door.

Purple door is scenery in the Hallway. "Door of unusual purple color decorated with white flowers."
Understand "purple door", "purple", "purple door with white flowers" and "door with white flowers" as purple door.

Blue door is scenery in the Hallway. "The damaged blue door is located at the very end." 
Understand "blue door", "blue","damaged door" and "damaged blue door" as blue door.

Library is a room. The description of Library is "Thousands of books line the shelves. An
old lamp with a blue lampshade sits on the table. ". South of Library is the Hallway.

Bedroom is a room. The description of Bedroom is "Bedroom in gothic style can not go unnoticed when entering. A large bed with bedside tables occupies most of the room. From other furniture you can see a closet and a window through which you can not even see beacuse of dust". South of Bedroom is the Hallway. 

Art room is a room. The description of Art room is "Old drawing rack and dried colors are the first thing we see. Numerous paintings are hung on the walls, which are covered with cobwebs and dust. Nothing worth to see here.". South of Art room is the Hallway. 

Instead of entering Red door:
	say "[command clarification break]";
	now the player is in Library.
Instead of entering Purple door:
	if player carries silver key
		begin;
			say "[command clarification break]";
			now the player is in Bedroom;
		end if.
		
Instead of entering Blue door:
	say "[command clarification break]";
	now the player is in Art room.

Instead of going north in the Hallway:
	say "You can go through red door, purple door or blue door.".
	
The ground is a backdrop. "It's rather dirty.” The ground is in the Mansion.
The wall is a backdrop. "There is a lack of color on it.” The wall is in the Mansion.


Section - Random Stuff

Talking to is an action applying to one visible thing.

Understand "greet [someone]" or "say hello/hi to [someone]" or "talk to [someone]" as talking to.

Toxicity is a kind of value. The toxicities are safe and poisonous.

Understand "give [things] to [someone]" as giving it to.	

Lockable is a kind of value.  Openable is a kind of value. 
	

Part -  Long Hallway

Old showcase is a thing in the Long Hallway. It is an openable container. It is closed. The description is "Old showcase with broken glass doors.".

The locket is in old showcase.
The locket is lockable and openable. The locket is closed and locked.
The tiny gold key unlocks the locket.
Message is in locket. The description of Message is  "You make your own luck. :)".
After taking a message:
	end the story saying "Congrats! You find a nice quote for motivation.";

Dried fruit is a thing in the old showcase. It is edible. The description is "Dried fruit packaged in old paper."
Understand "fruit" and "dried fruit" as the dried fruit. The dried fruit has a toxicity. The dried fruit is safe.
The printed name of Dried fruit is "Dried fruit".
After eating the dried fruit:
	increase the score by 10;
	say "You wish you had another dried fruit."
	
The porcelain vase is in the Long Hallway. The vase can be broken or unbroken. 
Understand "broken" and "shattered" as the vase when the vase is broken.
Instead of taking the vase:
	now the vase is broken;
	now the printed name of the vase is "broken porcelain vase";
	say "You weren't careful and you broke the vase."


Part - Library

Ghost is a woman in Library.

After asking Ghost about "help":
	increase the score by 5;
	say "Ghost gives you guide to answer your questions.";
	now the guide is carried by the player;

A guide is a kind of thing. Understand "guide" as a guide. A guide has a table name called the contents.
The Guide to Fortune is a guide carried by the ghost.The contents of the Guide is the Table of Qustions. 

Instead of consulting a guide about a topic listed in the contents of the noun:
	say "[reply entry][paragraph break]".
Report consulting a guide about:
	say "You flip through [the noun], but find no reference to [the topic understood]." instead

Table of Qustions
topic		reply
"tiny golden key" or "locket key"		"A man has it."
"treasure" 		"It's not always about a gold. Treasure can be anything."
"silver key" or "door key"		"Look at the bookcase."		

Silver key is in Bookcase.
Bookcase is a thing in the Library . It is an openable container. It is closed. The description is "Thousands of books arranged alphabetically are looking for someone to open them".

Instead of opening a bookcase:
	if player carries guide:
		increase the score by 5;
		say "Finally![paragraph break] You find a silver key.";
		now player carries silver key;
	otherwise:
		say "You first need ask ghost for help.";		

Part - Bedroom

Vintage chest of drawers is a thing in the Bedroom . It is an openable container. It is closed. The description is "Vintage chest of drawers hides many secrets.".
Wardrobe is a thing in the Bedroom. It is an openable container. It is closed. The description is "Wardrobe without doors.".
Bed is a thing in the Bedroom. It is an openable container. It is closed. The description is " A huge bed where the blanket is no longer visible from dust.".
Bedside table is a thing in the Bedroom . It is an openable container. It is closed. The description is "Bedsite table with a lack of handles on the drawers is very noticeable.".


Old bag is a thing in Vintage chest of drawers. It is an openable container. It is closed.
The plural of strange pill is stange pills. A strange pill is a kind of thing. A strange pill is always edible. Ten strange pills are in old bag.
A strange pill has a toxicity. A strange pill is usually poisonous.

After eating a poisonous strange pill:
	decrease the score by 4;
	say "Oh, that didn't taste right at all, such a bad idea!"
	
After eating a safe strange pill:
	increase score by 12;
	say "Now I can see that little golden key.";
	now player carries tiny gold key;
	
When play begins:
	now a random strange pill is poisonous.

Small bag is a thing in Bedside table. It is an openable container. It is closed. The description is "Try your luck.".
The diamond necklace is inside the Small bag. Understand "bag" and "small bag" as the small bag.
The printed name of Small bag is "Small bag".
After opening a small bag:
	decrease the score by 5;
	say "Spider was inside and bite you.";

Instead of giving a diamond necklace to Erik:
	say "Finally I have it.[paragraph break] Pills will lead you to answer you seek.";
	now Erik carries diamond necklace;
		

Erik is a man in Bedroom.

Table of Erik Responses
Topic	Response	Index
"Who are you"	"Ghost that keep safe this mansion."	"Who are you"
"Can you help me"	"Only if you give me something in return"	"Can you help me"
"What you want"	"Diamond necklace"	"What you want"


After asking Erik about something:
	if the topic understood is a topic listed in the Table of Erik Responses:
		say "[Response entry]";
	otherwise:
		say "Cant answer to that question.";

l-asking is an action applying to one thing.
understand "ask [thing] about" as l-asking.
		
Instead of l-asking a Erik:
	if the noun is Erik:
		let T be the Table of Erik Responses;
		list options from T;

To list options from (T - a table name):
	let N be the number of rows in T;
	if N is 0:
		say "There is no question.";
	otherwise:
		say "You can ask about: ";
		repeat with X running from 1 to N minus 1:
			say "[index in row X of T][if N is greater than 2], [end if]";
		if N is greater than 1:
			say "or ";
		say "[index in row N of T].";
