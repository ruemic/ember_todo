Todo.IndexRoute = Ember.Route.extend
  redirect: -> @transitionTo 'lists'
