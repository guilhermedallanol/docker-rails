class @TableRowLink
  constructor: ->
    # Make rows (means: cells with class js-row-link) clickable
    $(document).off('click').on 'click', 'tr[data-href] > td.js-row-link', ->
      Turbolinks.visit $(this).parent().attr('data-href')
      return
