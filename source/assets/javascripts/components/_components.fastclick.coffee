if 'addEventListener' in document
  document.addEventListener 'DOMContentLoaded', (->
    FastClick.attach document.body
    return
  ), false
