var createTopic = function($scope, $http) {

  $("#research_word").keypress(function (e) {
    if (e.which == 13) {
      if ($scope.researchWord) {
        getEvent($scope.researchWord);
      }
    }
  });

  function getEvent(keyword) {
    $http.jsonp("http://connpass.com/api/v1/event/?callback=JSON_CALLBACK&keyword=" + keyword)
    .success(function(data) {
      console.log(data["events"]);
      $scope.events = data["events"];
    })
    .error(function() {
      console.log("error!");
    });
  }
}
