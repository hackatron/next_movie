NextMovie.MoviesController = Ember.ArrayController.extend
  addMovie: (title) ->
    NextMovie.Movie.createRecord(title: title)
    this.get('store').commit()