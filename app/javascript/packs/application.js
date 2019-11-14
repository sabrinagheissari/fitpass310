import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import Swal from 'sweetalert2'
import Rails from 'rails-ujs';


import { initMapbox } from '../plugins/init_mapbox';

initMapbox();


const handleConfirm = function(element) {
    if (!allowAction(this)) {
      Rails.stopEverything(element)
    }
  }

  const allowAction = element => {
    if (element.getAttribute('data-confirm-swal') === null) {
      return true
    }

    showConfirmationDialog(element)
    return false
  }

  // Display the confirmation dialog
  const showConfirmationDialog = element => {
    const message = element.getAttribute('data-confirm-swal')
    const text = element.getAttribute('data-text')

    Swal.fire({
      title: message || 'Are you sure?',
      text: text || '',
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#BA7E7E',
      confirmButtonText: 'Yes',
      cancelButtonText: 'Cancel',
    }).then(result => confirmed(element, result))
  }

  const confirmed = (element, result) => {
    if (result.value) {
      // User clicked confirm button
      element.removeAttribute('data-confirm-swal')
      element.click()
    }
  }

// Add event listener before the other Rails event listeners like the one
// for `method: :delete`
Rails.delegate(document, 'a[data-confirm-swal]', 'click', handleConfirm)

Rails.start()
