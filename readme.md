###All ‘GET’ requests will be in JSON format. All ‘post’, ‘create’ and ‘delete’ posts must be in plain text format.


**Show all Chats for all rooms:**

To ‘get’ all chats for all rooms, use;  
<https://chatty-cats.herokuapp.com/chats>

**Show all Chats for a Room:**

To ‘get’ all chats for a room, use;  
<https://chatty-cats.herokuapp.com/rooms/:id/chats>  
Where :id = room_id

**Show all Users for a Room:**

To ‘get’ all users for a room, use;  
<https://chatty-cats.herokuapp.com/rooms/3/users>  
Where :id = room_id

**Show all users in database:**

To ‘get’ all users, use;  
<https://chatty-cats.herokuapp.com/users>  

**Show just one user by profile:**

To 'get' one user with just profile info, use;  
<https://chatty-cats.herokuapp.com/users/9/profile>  
Where '9' is the user ID.

**Show all rooms in database:**

To ‘get’ all rooms, use;  
<https://chatty-cats.herokuapp.com/rooms>

**Create a new Chat message:**

To ‘post’ a new chat massage, use;  
<https://chatty-cats.herokuapp.com/chats>  
With the following parameters;

	message: "Things should get better",
	user_id: 3 #this is the id of the current user
	room_id: 3 #this is the id of the room

**Create a new User:**

To ‘post’ a new user profile use;  
<https://chatty-cats.herokuapp.com/users>  
With the following parameters;

	name": Jack white,
	username: Jackie,
	email: Jackenstien@aol.com,
	about: woke up like this

**Create a new room:**

To ‘post a new room, use;  
<https://chatty-cats.herokuapp.com/rooms>  
With the following parameter;

	name: Happy cats,
   
**Delete a user:**

To ‘delete’ an existing user, use;  
<https://chatty-cats.herokuapp.com/users>  
With the following parameter;

	id: 3

**Delete a room:**

To ‘delete’ an existing room, use;  
<https://chatty-cats.herokuapp.com/rooms>  
Where the following parameter;

	id: 3


