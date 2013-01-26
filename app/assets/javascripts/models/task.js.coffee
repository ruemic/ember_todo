Todo.Task = DS.Model.extend
  list: DS.belongsTo 'Todo.List'

  name: DS.attr 'string'
  isDone: DS.attr('boolean', defaultValue: false)
  minutesEstimatedToComplete: DS.attr('number', defaultValue: 0)

  minutesLeftToComplete: Ember.computed ->
    if @get('isDone') is true then 0 else @get('minutesEstimatedToComplete')
  .property('isDone', 'minutesEstimatedToComplete')
