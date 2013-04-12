NextMovie.MoviesController = Ember.ArrayController.extend
  add: (title) ->
    NextMovie.Movie.createRecord(title: title)
    this.get('store').commit()

  vote: (id) ->
    alert(id)
    NextMovie.Vote.createRecord(movie_id: id)
    this.get('store').commit()