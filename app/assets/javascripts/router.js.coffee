Todo.Router.map ->
  @resource 'lists', ->
    @route 'new'

    @resource 'list', path: ':list_id', ->

