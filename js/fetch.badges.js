function fetchAndDisplayBadges(userId) {
    $.ajax({
        url: 'get_badges.php', 
        type: 'GET',
        data: { user_id: userId }, // Send the active user's ID
        dataType: 'json',
        success: function(response) {
            displayBadges(response); // Call the function to display badges
            console.log(response);
        },
        error: function(xhr, status, error) {
            console.error("An error occurred: " + error);
        }
    });
}