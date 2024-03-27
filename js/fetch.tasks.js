function fetchTasksForSection(sectionId, sectionDiv) {
    $.ajax({
        url: 'get_tasks.php',
        type: 'GET',
        data: { section_id: sectionId },
        dataType: 'json',
        success: function(tasks) {
            tasks.forEach(function(task) {
                if (task.section_id == sectionId) {
                    // Example: task might have a property like task.type which could be 'make-bed', 'brush-teeth', etc.
                    // And task.fontSize which is the size of the font you want to apply to this task.
                    var taskButton = $('<div>').addClass('task-box ' + task.type).append(
                        $('<div>').addClass('task-box-content').css('font-size', task.fontSize + 'rem').text(task.name)
                    );
                    sectionDiv.append(taskButton);
                }
            });
        }
    });
}