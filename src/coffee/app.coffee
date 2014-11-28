$ ->
  
  delay = (ms, func) -> setTimeout func, ms
  cell = (index, state) ->
    delay 500, ->
      $(".js-cell-#{index}").addClass 'active'

  display = [].concat(
    [0, 0, 1, 1, 1, 1, 0, 0]
    [0, 1, 0, 0, 0, 0, 1, 0]
    [1, 0, 1, 0, 0, 1, 0, 1]
    [1, 0, 0, 0, 0, 0, 0, 1]
    [1, 0, 1, 0, 0, 1, 0, 1]
    [1, 0, 0, 1, 1, 0, 0, 1]
    [0, 1, 0, 0, 0, 0, 1, 0]
    [0, 0, 1, 1, 1, 1, 0, 0]
  )

  for state, index in display
    if state == 1
      cell index, true