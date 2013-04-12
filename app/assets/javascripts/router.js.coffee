NextMovie.Router.map ->
  this.resource 'movies', path: '/'
  this.resource 'vote'

NextMovie.MoviesRoute = Ember.Route.extend
  model: -> NextMovie.Movie.find()