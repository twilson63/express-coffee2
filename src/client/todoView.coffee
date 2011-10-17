module.exports = SC.TextField.extend
  insertNewline: ->
    value = @get 'value'
    if value
      Todos.todosController.createTodo value
      @set 'value', ''
      