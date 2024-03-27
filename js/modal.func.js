// Set up the vars for opening and closing the various modal popups
var modal = document.getElementById('taskCountModal');

// Get the button that opens the modal
var btn = document.getElementById('showTaskSummary'); 

// When the button is clicked, open the modal and fetch data
btn.onclick = function() {
    // Check if the modal is currently displayed
    if (modal.style.display === 'block') {
        // Modal is open, so close it
        modal.style.display = 'none';
    } else {
        // Modal is closed, so open it and fetch data
        modal.style.display = 'block';
        fetchTaskCounts();
    }
};

// Get the <span> element that closes the modal
var span = document.getElementsByClassName('close')[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = 'none';
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = 'none';
    }
}