import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-bookings"
export default class extends Controller {
  static targets = ["future", "past", "current", "bookings"]

  connect() {
  }

  showContent(e){
    document.querySelectorAll('.dashboard-clicked').forEach(function(tab) {
      tab.classList.remove('dashboard-clicked')
    })
    e.currentTarget.classList.add("dashboard-clicked")
    this.bookingsTargets.forEach((booking) => {
      if (booking.classList.contains(e.currentTarget.id)) {
        booking.classList.remove('d-none')
      } else {
        booking.classList.add('d-none')
      }
    })

  }
}
