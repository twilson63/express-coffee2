# ToDos Controller
module.exports = SC.ArrayProxy.create
  content: []
  
  createTodo: (title) ->
    todo = Todos.Todo.create { title }
    @pushObject(todo)
  
  remaining: `function() {
    return this.filterProperty('isDone', false).get('length');
  }.property('@each.isDone')`
  
  clearCompletedTodos: ->
    @removeObject todo for todo in @filterProperty('isDone', true)