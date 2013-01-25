Todo.List = DS.Model.extend
  tasks: DS.hasMany 'Todo.Task'

  name: DS.attr 'string'





Todo.List.FIXTURES = [
  {
    id: 1
    name: 'Home',
    tasks: [10, 11]
  }

  {
    id: 2
    name: 'Work',
    tasks: [20, 21]
  }

  {
    id: 3
    name: 'Other',
    tasks: []
  }
]
