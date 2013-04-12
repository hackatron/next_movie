NextMovie.Movie = DS.Model.extend
  title: DS.attr('string')
  votes: DS.hasMany('NextMovie.Vote')