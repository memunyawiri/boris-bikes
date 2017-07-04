
# From User Stories to a Domain Model

User Story:

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

### All the nouns in the User Story

As a **person**,
So that I can use a **bike**,
I'd like a **docking station** to release a bike.

As a **person**,
So that I can use a good **bike**,
I'd like to see if a bike is working

### All the verbs in the User Stories

As a person,
So that I can **use** a bike,
I'd like a docking station to **release a bike**.

As a person,
So that I can **use** a good bike,
I'd like to **see if a bike is working**

### The nouns and verbs into Objects and Messages

Objects  | Messages
------------- | -------------
Person  |
Bike  | working?
DockingStation | release_bike

### A diagram that shows how your Objects will use Messages to communicate with one another

```
Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
```
