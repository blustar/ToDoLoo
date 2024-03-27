function displayBadges(badges) {
    var badgesContainer = $('#badges-container');
    badgesContainer.empty(); // Clear existing badges

    badges.forEach(function(badge) {
        var badgeElement = $('<div>').addClass('badge-wrapper');
        var badgeImage = $('<img>').attr('src', badge.filename).css('width', '90%').css('margin', '0 auto');

        // Check if the badge is earned by comparing badge_id with user_badges table
        badgeImage.css('opacity', badge.earned ? '1' : '0.25');
        console.log("Badge earned status:", badge.earned);

		 // If the badge is earned, add video link
		if (badge.earned) {
            badgeElement.attr('data-video', badge.video); // Store the video URL
            badgeElement.on('click', function() {
                openVideoModal($(this).data('video'));
            });
        }
        
        // If the badge is not earned, add a lock icon
        if (!badge.earned) {
            var lockIcon = $('<i>').addClass('fas fa-lock').css({
                'position': 'absolute',
                'top': '50%',
                'left': '50%',
                'transform': 'translate(-50%, -50%)',
                'color': '#f252ab', // Adjust color as needed
                'font-size': '3em', // Adjust size as needed
                'text-shadow': '2px 2px 2px #333'
            });
            badgeElement.append(lockIcon);
        }

        badgeElement.append(badgeImage);
        badgesContainer.append(badgeElement);
    });
}