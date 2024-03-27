// Function to toggle the button's style and send an AJAX request to update the database
function toggleButtonStyle(button) {
    let taskName = button.getAttribute('data-task-name');
    let status = button.classList.contains('clicked') ? 'not_done' : 'done';
    
    // Toggle the button appearance
    if (status === 'not_done') {
      button.classList.remove('clicked');
      button.style.backgroundColor = ''; // Revert to original background color
      button.style.color = ''; // Revert to original text color
    } else {
      button.classList.add('clicked');
      button.style.backgroundColor = 'magenta'; // Change button color to magenta
      button.style.color = 'white'; // Change text color to white
      runConfettiAnimation(); // Run the confetti animation
      animateGoldCoin();
    }

    // Send the AJAX request
    $.ajax({
		  url: 'task_update.php',
		type: 'POST',
		data: {
		  task_name: taskName,
		  status: status,
		  user_id: activeUserId // Send the active user ID
		},
	
      success: function(response) {
        console.log(response);
      },
      error: function(xhr, status, error) {
        console.error("An error occurred: " + error);
      }
      
     
   
    });
  }