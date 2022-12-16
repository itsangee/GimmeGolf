import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-booked-users"
export default class extends Controller {
  static targets = ["users", "slots"]
  connect() {
    console.log('hi');
  }

  showUsers(e){

    document.querySelectorAll('.course-show-cliked').forEach(function(button) {
      button.classList.remove('course-show-cliked')
    })
    const slotId = e.currentTarget.id
    e.currentTarget.classList.add('course-show-cliked')
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
