Todo.Task = DS.Model.extend
  list: DS.belongsTo 'Todo.List'

  name: DS.attr 'string'
  isDone: DS.attr 'boolean'
  minutesEstimatedToComplete: DS.attr 'number'




Todo.Task.FIXTURES = [
  {
    id: 10
    name: 'Clean the house'
    minutesEstimatedToComplete: 60
  },

  {
    id: 11
    name: 'Make dinner'
    minutesEstimatedToComplete: 20
  },


  {
    id: 20
    name: 'Write a todo app in Ember'
    isDone: false # ...but soon! ;-)
    minutesEstimatedToComplete: (60 * 2)
  },

  {
    id: 21
    name: 'Make a presentation for the other co-workers'
    minutesEstimatedToComplete: 30
  }
]
