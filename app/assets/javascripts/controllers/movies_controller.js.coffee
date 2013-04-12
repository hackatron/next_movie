NextMovie.MoviesController = Ember.ArrayController.extend
  sortProperties: ['rating']
  sortAscending: false

  add: (title) ->
    NextMovie.Movie.createRecord(title: title)
    this.get('store').commit()

  vote: (id) ->
    vote = NextMovie.Vote.createRecord()
    vote.set('movie', NextMovie.Movie.find(id))
    this.get('store').commit()