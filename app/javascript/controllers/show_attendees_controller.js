import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-attendees"
export default class extends Controller {
  static targets = ["attendees"]
  connect() {
    console.log('hello');
  }

  revealAttendees(){
    if (this.attendeesTarget.classList.contains("d-none")) {
      this.attendeesTarget.classList.remove("d-none")
    } else if (!this.attendeesTarget.classList.contains("d-none")){
      this.attendeesTarget.classList.add("d-none")
    }
  }
}
