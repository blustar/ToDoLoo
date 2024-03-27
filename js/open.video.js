function openVideoModal(videoUrl) {
    var videoModal = $('#videoModal');
    var videoPlayer = $('#videoModal #badgeVideo');

    videoPlayer.attr('src', videoUrl); // Set the video source
    videoModal.show(); // Display the modal

    // Close the modal on clicking the close button
    videoModal.find('.close').on('click', function() {
        videoModal.hide();
        videoPlayer[0].pause(); // Pause the video
        videoPlayer[0].currentTime = 0; // Reset the video to the start
    });
}