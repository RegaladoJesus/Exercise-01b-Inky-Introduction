/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/
->planning

== planning ==
You are the head of a 5 person heist crew. You're next heist is the largest bank in Indianapolis.
Currently the crew is split between 2 ways of pulling off this job. John and Marcelo want to go in guns blazing through the front entrance. This approach is dangerous but quick. Carlos and Mark want to go silently through the air vents and rob them without them knowing. This approach will take longer but the payout is bigger.
You are the tie breaker. Which approach are you taking?
*[Silent Approach] -> selected_silent
*[Loud Approach]  -> selected_loud


== selected_silent ==
You chose the silent approach
-> heist

== selected_loud ==
You chose the loud approach
-> heist

== heist ==
*[Continue]
Your crew has already gathered all of the equipment needed and you all head to the Great Indianapolis Bank.
You all get into place {selected_silent: on the Roof | at the Main Entrance} of the bank.
{selected_silent: ->sneak_in | ->bust_in}
->END

== sneak_in ==
*[Continue]
You break open the air vent cover.
You crawl through the vents, following the blueprint your team gathered, until you reach the vault.
->the_vault

== bust_in == 
*[Continue]
You bust in guns blazing. John and Marcelo take 2 bank tellers as hostages.
They were able to get the vault code from the tellers and Marcelo radio's the code over to you, Carlos and Mark.
->the_vault

== the_vault ==
*[Continue]
You've successfully made it into the vault and {selected_silent: carefully | rush to } collect all the money your duffel bags can hold.
{selected_silent: ->silent_escape | ->loud_escape}
->END

== silent_escape ==
You make your way back through the air vents, pushing through the wind of the AC unit.
->finale

== loud_escape ==
There are sirens in the distance
The crew rushes out of the vault with as much money as you all could grab in the short amount of time.
*[Continue]
You all make your way back to the main entrance and have a fire fight with the police.
Fleeing to the getaway car, you hear Mark yell for a second and look back to see him lying on the ground still.
Marcelo is also shot in the leg, left limping the rest of the way.
->finale

== finale ==
*[Continue]
{selected_loud:The crew was able to overpower the police and outrun the police although not everyone made it.|The crew was able to escape undetected!} You've made it to the safehouse with a total score of:
{selected_loud:$55,328|$76,964}
Your cut: {selected_loud:$13832|$15,392}
->END



