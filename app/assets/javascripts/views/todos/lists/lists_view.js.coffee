Yata.Views.Todos.Lists ?= {}

# TODO: Make lists sortable and droppable.
class Yata.Views.Todos.Lists.ListsView extends Backbone.View
  template: JST['todos/lists/lists']

  lists: null

  listList: null

  events:
    'click #add-list': 'addNewList'

  initialize: ->
    @lists = Proxy.get('lists')
    @lists.on('reset', @render)
    @lists.on('add', @appendList)

  render: =>
    # Render the overall template.
    @$el.html(@template())

    # Cache relevant sub-views.
    @listList = @$('#list-list')

    # Render each list for this user.
    @lists.each(@appendList)

    # Turn on sorting for all but the inbox-list.
    @listList.sortable(
      items: 'li:not(#inbox-list)'
      distance: 10
      opacity: 0.75
    ).disableSelection()

    this

  appendList: (list, index) =>
    ListKlass = if index == 0 then Yata.Views.Todos.Lists.InboxListView else Yata.Views.Todos.Lists.ListView
    listView = new ListKlass(model: list)
    @listList.append(listView.render().el)

  addNewList: =>
    @collection.create({ order: @collection.last().get('order') + 1, wait: true })
