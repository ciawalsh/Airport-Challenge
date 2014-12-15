Airport Challenge
========================

- This is a small piece of software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off.

- Every plane has a status indicating whether it's flying or landed.

- This software was developed using TDD.


###Class - Airport

Responsibilites             | Collaborators
----------------------------|------------------
Allow Planes to Take off    | Plane, Weather, Traffic Control
Allow Planes to Land        | Plane, Weather, Traffic Control

### Class - Plane 

Responisibilites        | Collaborators
------------------------|------------------
Take Off                | Airport, Weather, Traffic Control
Land                    | Airport, Weather, Traffic Control

### Module - Traffic Control 

Responisibilites        | Collaborators
------------------------|------------------
Allow Planes to Land    | Plane, Weather, Airport
Allow Planes to Take Off| Plane, Weather, Airport

### Module - Weather 

Responisibilites        | Collaborators
------------------------|------------------
Be Stormy               | Traffic Control, Airport
Be Sunny                | Traffic Control, Airport