app = angular.module("NextMovie", ["ngResource"])

app.factory "Movie", ($resource) ->
  $resource("/movies/:id", { id: "@id" }, { update: { method: "PATCH" } })

@MoviesCtrl = ($scope, Movie) ->
  $scope.movies = Movie.query()

  $scope.addMovie = ->
    movie = Movie.save($scope.newMovie)
    $scope.movies.push(movie)
    $scope.newMovie = {}
