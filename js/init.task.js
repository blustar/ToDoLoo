
// Attach the event to all task-box elements
document.querySelectorAll('.task-box').forEach(button => {
    button.addEventListener('click', function() {
      toggleButtonStyle(button);
    });
  });
    
let activeUserId = null; // This will hold the currently active user's ID
