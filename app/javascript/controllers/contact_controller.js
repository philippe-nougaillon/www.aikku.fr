import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="contact"
export default class extends Controller {

  connect() {
  }

  disable_button_send(event) {
    const submitButton = document.getElementById('submit-button');

    if (event.target.checked) {
      submitButton.disabled = false;
    } else {
      submitButton.disabled = true;
    }
  }
}
