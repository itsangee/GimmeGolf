import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard-show-friends"
export default class extends Controller {
  static targets = ["followees", "followers"]
  connect() {

  }

  showFollowers(){
    if (this.followersTarget.classList.contains("d-none")){
      this.followersTarget.classList.remove("d-none")
    } else{
      this.followersTarget.classList.add('d-none')
    }
  }

  showFollowees(){
    if (this.followeesTarget.classList.contains("d-none")){
      this.followeesTarget.classList.remove("d-none")
    } else{
      this.followeesTarget.classList.add('d-none')
    }
  }
}
