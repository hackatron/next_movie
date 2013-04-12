NextMovie.Movie = DS.Model.extend
  title: DS.attr('string')
  rating: DS.attr('number')
  votes: DS.hasMany('NextMovie.Vote')
