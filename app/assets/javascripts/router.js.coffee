NextMovie.Router.map ->
  @route 'movies', path: '/'

NextMovie.MoviesRoute = Ember.Route.extend
  model: -> NextMovie.Movie.find()