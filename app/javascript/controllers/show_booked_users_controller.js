import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-booked-users"
export default class extends Controller {
  static targets = ["users", "slots"]
  connect() {
    console.log('hi');
  }

  showUsers(e){

    const slotId = e.currentTarget.id
    this.usersTargets.forEach((item) => {
      if (item.classList.contains(slotId)) {
        // console.log(`we're in the if statement`)
        item.classList.remove("d-none")
      } else {
        item.classList.add("d-none")
      }
    })

  }
}
