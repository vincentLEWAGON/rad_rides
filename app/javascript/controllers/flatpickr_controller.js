import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    const bookingForm = document.getElementById('booking-form-div');
    if (bookingForm) {
      const bookings = JSON.parse(bookingForm.dataset.bookings);

      flatpickr("#range_start", {
        mode: "range",
        minDate: "today",
        inline: false,
        dateFormat: "Y-m-d",
        "disable": bookings,
      })
    }
  }
}
