users = User.create([
	{name: 'James Wiggin', email: 'dsaads@bs.if.com'},
	{name: 'Andrew Wiggin', email: 'asdklmds@bs.if.com'}
])

tasks = Task.create([
  {name: 'User1 Task1',  due_date: DateTime.now, user_id: User.first.id},
  {name: 'User1 Task2',  due_date: DateTime.now, user_id: User.first.id},
  {name: 'UserΩ Task1',  due_date: DateTime.now, user_id: User.last.id},
])