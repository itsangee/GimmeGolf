import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-bookings"
export default class extends Controller {
  static targets = ["future", "past", "current", "bookings"]
  connect() {

  }

  showContent(e){
    // console.dir(this.element)
    // console.log(e.currentTarget);
    // this.bookingsTargets.forEach(booking => booking.classList.add('d-none'))
    this.bookingsTargets.forEach((booking) => {
      if (booking.classList.contains(e.currentTarget.id)) {
        console.log('hello in if')
        booking.classList.remove('d-none')
      } else {
        booking.classList.add('d-none')
      }
    })
      // const currentClass = e.target.classList.remove('d-none')

    // console.log(this.element);
    // if (this.element.classList.contains("d-none")) {
    //   this.element.classList.remove("d-none")
    // } else {
    //   this.element.classList.add("d-none")
    // }
  }
}
