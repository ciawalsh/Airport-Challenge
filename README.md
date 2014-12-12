Airport Challenge
========================

This 




###Class - Bike

Responsibilites             | Collaborators
----------------------------|------------------
Be rented                   | User, Station
Be returned                 | User, Station, Van
Be broken                   | User
Be fixed                    | Garage
Be held                     | Garage, Van, User, Station
Be moved                    | Van, User

### Class - User

Responsibilites     | Collaborators
--------------------|------------------------
Rent                |  Bike, Station
Break               |  Bike
Return              |  Bike, Station
Move                |  Bike

### Class - Station 

Responisibilites        |Collaborators
------------------------|------------------
Hold                    | Bike
Receive                 | Bike, User, Van
Eject                   | Bike, User, Van

### Class - Van 

Responisibilites        |Collaborators
------------------------|------------------
Receive                 | Bike, Station, Garage
Eject                   | Bike, Station, Garage
Holding                 | Bike
Move                    | Bike, Station, Garage

### Class - Garage 

Responisibilites        |Collaborators
------------------------|------------------
Hold                    | Bike
Fix                     | Bike
Receive                 | Bike, Van
Eject                   | Bike, Van