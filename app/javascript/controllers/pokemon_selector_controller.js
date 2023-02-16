import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pokemon-selector"
export default class extends Controller {
  static targets = [ "checkbox" ]
  connect() {
    console.log("Le controller est bien branché")
  }

  toggle_check() {
    const checked = this.checkboxTargets.every(checkbox => checkbox.checked)
    this.checkboxTargets.forEach(checkbox => checkbox.checked = !checked)
  }

}
