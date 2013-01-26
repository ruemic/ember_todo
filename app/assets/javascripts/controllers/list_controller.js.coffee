Todo.ListController = Ember.ObjectController.extend
  isNotCompleted: Ember.computed ->
    @get('minutesLeftToComplete') isnt null
  .property('minutesLeftToComplete')
