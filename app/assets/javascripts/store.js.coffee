NextMovie.Store = DS.Store.extend
  revision: 12
  adapter: DS.RESTAdapter.create({
    url: 'http://next-movie.herokuapp.com'
  })