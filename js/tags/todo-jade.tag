todo-jade
  h3 { opts.title }

  ul
    li(each='{ item, i in items}') { item }

  form(onsubmit='{ add }')
    input
    button Add { items.length + 1 }

  script(type='coffee').
    @items = []

    @add = (e)=>
      input = e.target[0]
      @items.push input.value
      input.value = ''
