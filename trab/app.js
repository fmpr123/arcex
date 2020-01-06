document.addEventListener("init", function(event) {
  if (event.target.id === "pageNav2") {
    var cardTitle =
      event.target.data && event.target.data.cardTitle
        ? event.target.data.cardTitle
        : "Custom Card";
    event.target.querySelector("ons-card div.title").textContent = cardTitle;
  }
});

var customPush2 = function(event) {
  myNavigator.pushPage("pageNav2.html", {
    data: { cardTitle: event.target.textContent }
  });
};

ons.ready(function() {
  var pullHook = document.getElementById("pull-hook");

  pullHook.addEventListener("changestate", function(event) {
    var message = "";

    switch (event.state) {
      case "initial":
        message = "Pull to refresh";
        break;
      case "preaction":
        message = "Release";
        break;
      case "action":
        message = "Loading...";
        break;
    }

    pullHook.innerHTML = message;
  });

  pullHook.onAction = function(done) {
    setTimeout(done, 1000);
  };
});

ons.ready(function() {
  ons
    .createElement("action-sheet.html", { append: true })
    .then(function(sheet) {
      app.showFromTemplate = sheet.show.bind(sheet);
      app.hideFromTemplate = sheet.hide.bind(sheet);
    });
});
