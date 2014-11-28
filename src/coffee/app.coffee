$ ->
  delay = (ms, func) -> setTimeout func, ms

  cell = (index, state) ->
    if state == 1
      $(".js-cell-#{index}")
        .queue ->
          $(this)
            .addClass 'active'
            .dequeue()
          return false
        .delay 500
    else
      $(".js-cell-#{index}")
        .queue ->
          $(this)
            .removeClass 'active'
            .dequeue()
          return false
        .delay 500

  displays = []

  displays.push [].concat(
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
  )

  displays.push [].concat(
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 1, 0, 0, 0]
    [0, 0, 0, 1, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
  )

  displays.push [].concat(
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 1, 0, 0, 0, 0]
    [0, 0, 0, 0, 1, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
  )

  displays.push [].concat(
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 1, 1, 0, 0, 0]
    [0, 0, 1, 0, 0, 1, 0, 0]
    [0, 0, 1, 0, 0, 1, 0, 0]
    [0, 0, 0, 1, 1, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
  )

  displays.push [].concat(
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 1, 1, 1, 1, 0, 0]
    [0, 1, 0, 0, 0, 0, 1, 0]
    [0, 1, 0, 0, 0, 0, 1, 0]
    [0, 1, 0, 0, 0, 0, 1, 0]
    [0, 1, 0, 0, 0, 0, 1, 0]
    [0, 0, 1, 1, 1, 1, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
  )

  displays.push [].concat(
    [0, 1, 1, 1, 1, 1, 1, 0]
    [1, 0, 0, 0, 0, 0, 0, 1]
    [1, 0, 0, 0, 0, 0, 0, 1]
    [1, 0, 0, 0, 0, 0, 0, 1]
    [1, 0, 0, 0, 0, 0, 0, 1]
    [1, 0, 0, 0, 0, 0, 0, 1]
    [1, 0, 0, 0, 0, 0, 0, 1]
    [0, 1, 1, 1, 1, 1, 1, 0]
  )

  display_clear = [].concat(
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
  )

  display_heart = [].concat(
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 1, 0, 0, 1, 0, 0]
    [0, 1, 1, 1, 1, 1, 1, 0]
    [0, 1, 1, 1, 1, 1, 1, 0]
    [0, 1, 1, 1, 1, 1, 1, 0]
    [0, 0, 1, 1, 1, 1, 0, 0]
    [0, 0, 0, 1, 1, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
  )

  display_smile = [].concat(
    [0, 1, 1, 1, 1, 1, 1, 0]
    [1, 0, 0, 0, 0, 0, 0, 1]
    [1, 0, 1, 0, 0, 1, 0, 1]
    [1, 0, 0, 0, 0, 0, 0, 1]
    [1, 0, 1, 0, 0, 1, 0, 1]
    [1, 0, 0, 1, 1, 0, 0, 1]
    [1, 0, 0, 0, 0, 0, 0, 1]
    [0, 1, 1, 1, 1, 1, 1, 0]
  )

  display_club = [].concat(
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 1, 1, 1, 1, 0, 0]
    [0, 1, 0, 1, 1, 0, 1, 0]
    [0, 1, 1, 0, 0, 1, 1, 0]
    [0, 1, 1, 0, 0, 1, 1, 0]
    [0, 1, 0, 1, 1, 0, 1, 0]
    [0, 0, 1, 1, 1, 1, 1, 0]
    [0, 0, 0, 0, 0, 0, 0, 1]
  )

  display_plus = [].concat(
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 1, 1, 0, 0, 0]
    [0, 0, 0, 1, 1, 0, 0, 0]
    [0, 1, 1, 1, 1, 1, 1, 0]
    [0, 1, 1, 1, 1, 1, 1, 0]
    [0, 0, 0, 1, 1, 0, 0, 0]
    [0, 0, 0, 1, 1, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
  )

  for state, index in display_clear
    cell index, state

  for display, index in displays
    for state, index in display
      cell index, state
  for state, index in display_clear
    cell index, state

  for state, index in display_club
    cell index, state
    cell index, state
  for state, index in display_clear
    cell index, state

  for state, index in display_smile
    cell index, state
    cell index, state
  for state, index in display_clear
    cell index, state

  for state, index in display_plus
    cell index, state
    cell index, state
  for state, index in display_clear
    cell index, state

  for state, index in display_heart
    cell index, state