module.exports = SC.View.extend
  remainingBinding: 'Todos.todosController.remaining'
  remainingString: `function() {
    var remaining = this.get('remaining');
    return remaining + (remaining === 1 ? " item" : " items");
  }.property('remaining')`
