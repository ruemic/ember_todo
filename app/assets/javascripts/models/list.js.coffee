Todo.List = DS.Model.extend
  tasks: DS.hasMany 'Todo.Task'

  name: DS.attr 'string'

  minutesLeftToComplete: Ember.computed ->
    total = @get('tasks').getEach('minutesLeftToComplete').reduce ((sum, min) -> sum + min), 0
    if total is 0 then null else total
  .property('tasks.@each.minutesLeftToComplete')



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
