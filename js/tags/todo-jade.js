
riot.tag2('todo-jade', '<h3>{opts.title}</h3> <ul> <li each="{item, i in items}">{item}</li> </ul> <form onsubmit="{add}"> <input> <button>Add {items.length + 1}</button> </form>', '', '', function(opts) {
this.items = [];

this.add = (function(_this) {
  return function(e) {
    var input;
    input = e.target[0];
    _this.items.push(input.value);
    return input.value = '';
  };
})(this);
});