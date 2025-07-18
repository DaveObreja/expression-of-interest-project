// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

// SOURCE: https://stackoverflow.com/questions/75944375/how-to-scroll-to-anchor-after-navigation-with-hotwire-turbo-frame
document.addEventListener("turbo:load", function() {
  const params = new URLSearchParams(window.location.search);
  if (params.get('scroll_to')) {
    const element = document.getElementById(params.get('scroll_to'));
    if (element) element.scrollIntoView();
  }
});
