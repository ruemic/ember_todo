Todo.Router.map ->
  @resource 'lists', ->
    @resource 'list', path: ':list_id', ->

