App = Ember.Application.create(LOG_TRANSITIONS: true)

App.Router.map ->
  @resource 'options', ->
    @route 'pronouns'
    @resource 'pronouns', path: "pronouns/:pronouns_pronoun", ->
      @route 'verbs'

App.IndexRoute = Ember.Route.extend
  redirect: ->
    this.transitionTo('options.pronouns')

App.OptionsPronounsRoute = Ember.Route.extend
  model: ->
    ['Já', 'Ty', 'On', 'Ona', 'Ono', 'My', 'Vy', 'Oni', 'Ony', 'Ona-plural']

# App.OptionsPronounsRoute = Ember.Route.extend
#   model: ->
#     ['Já', 'Ty', 'On', 'Ona', 'Ono', 'My', 'Vy', 'Oni', 'Ony', 'Ona-plural']


App.PronounsVerbsRoute = Ember.Route.extend
  model: ->
    ['chodit', 'jíst', 'pít', 'snít', 'zpívat']
#
# App.Pronoun = DS.Model.extend(
#   word: DS.attr("string")
# )
#
# App.Pronoun.adapter = Ember.FixtureAdapter.create()
#
# App.Pronoun.FIXTURES = [
#   {word: 'Já'}
#   {word: 'Ty'}
#   {word: 'On'}
#   {word: 'Ona'}
#   {word: 'Ono'}
#   {word: 'My'}
#   {word: 'Vy'}
#   {word: 'Oni'}
#   {word: 'Ony'}
#   {word: 'Ona-plural'}
# ]
