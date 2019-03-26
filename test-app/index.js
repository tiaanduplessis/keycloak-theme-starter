(function() {
  const config = {
    realm: "test-realm",
    clientId: "best-client",
    url: "http://localhost:8080/auth",
    "ssl-required": "external",
    "public-client": true,
    "confidential-port": 0
  };

  const keycloak = Keycloak(config);
  keycloak
    .init({
      onLoad: "login-required",
      promiseType: "native"
    })
    .then(function(authenticated) {
      alert(authenticated ? "authenticated" : "not authenticated");

      const logoutBtn = document.querySelector(".js-logout");

      if (logoutBtn) {
        logoutBtn.style.display = 'block'
        logoutBtn.addEventListener("click", function() {
          keycloak.logout();
        });
      }
    })
    .catch(function(error) {
      console.error(error);
      alert("failed to initialize");
    });
})();
