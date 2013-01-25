Todo.ListsRoute = Ember.Route.extend
  model: -> Todo.List.find()
