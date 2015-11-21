var createTopic = function($scope, $http) {
  $scope.events = [];

  $("#research_word").keypress(function (e) {
    if (e.which == 13) {
      if ($scope.researchWord) {
        getEvent($scope.researchWord, $scope.events);
      }
    }
  });

  function getEvent(keyword, events) {
    $http.jsonp("http://connpass.com/api/v1/event/?callback=JSON_CALLBACK&keyword=" + keyword)
    .success(function(data) {
      console.log(data["events"]);
    })
    .error(function() {
      console.log("error!");
    });
  }
}
