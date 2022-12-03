import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="button-review"
export default class extends Controller {
  static targets = [ "button" ]
  connect() {
    console.log("hello");
  }

  disappear() {
    console.log(this.buttonTarget)
    this.buttonTarget.classList.add('d-none')
  }

}
