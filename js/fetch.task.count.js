function fetchTaskCounts() {
    // Assuming activeUserId contains the ID of the active user
    $.ajax({
        url: 'get_task_counts.php',
        type: 'GET',
        data: { user_id: activeUserId },
        dataType: 'json',
        success: function(data) {
            document.getElementById('weekly-count').innerText = 'This Week: ' + data.weekly_count;
            document.getElementById('all-time-count').innerText = 'All-Time: ' + data.all_time_count;
        },
        error: function(error) {
            console.log('Error fetching task counts: ', error);
        }
    });
}