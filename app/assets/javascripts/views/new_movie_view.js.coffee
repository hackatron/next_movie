NextMovie.NewMovieView = Ember.View.extend
  templateName: 'new_movie'
  tagName: 'form'
  classNames: 'row collapse'

  submit: ->
    this.get('controller').send('add', this.get('newMovieTitle'))
    this.set('newMovieTitle', '')
    false