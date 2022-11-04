import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    flatpickr('.datetimeselect', { 
      enableTime: true
    })
  }
}
