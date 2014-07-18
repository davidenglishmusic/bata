// Generated by CoffeeScript 1.7.1
(function() {
  var App;

  App = Ember.Application.create({
    LOG_TRANSITIONS: true
  });

  App.Router.map(function() {
    return this.resource('options', function() {
      this.route('pronouns');
      return this.resource('pronouns', {
        path: "pronouns/:pronouns_pronoun"
      }, function() {
        return this.route('verbs');
      });
    });
  });

  App.IndexRoute = Ember.Route.extend({
    redirect: function() {
      return this.transitionTo('options.pronouns');
    }
  });

  App.OptionsPronounsRoute = Ember.Route.extend({
    model: function() {
      return ['Já', 'Ty', 'On', 'Ona', 'Ono', 'My', 'Vy', 'Oni', 'Ony', 'Ona-plural'];
    }
  });

  App.PronounsVerbsRoute = Ember.Route.extend({
    model: function() {
      return ['chodit', 'jíst', 'pít', 'snít', 'zpívat'];
    }
  });

}).call(this);