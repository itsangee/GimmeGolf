import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-bookings"
export default class extends Controller {
  static targets = ["future", "past", "current", "bookings"]

  connect() {
  }

  showContent(e){
    this.bookingsTargets.forEach((booking) => {
      if (booking.classList.contains(e.currentTarget.id)) {
        booking.classList.remove('d-none')
      } else {
        booking.classList.add('d-none')
      }
    })

  }
}
