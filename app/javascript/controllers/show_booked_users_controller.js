import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-booked-users"
export default class extends Controller {
  static targets = ["users"]
  connect() {
    console.log('hi');
  }

  showUsers(){
    console.log("working tbh");
  }
}
