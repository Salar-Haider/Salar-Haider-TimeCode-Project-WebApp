
    let dayCount = 1;

    // Function to add a new day panel
    function addDay() {
        dayCount++;
        document.getElementById("dayCount").value = dayCount; // Update hidden input value

        const daysContainer = document.getElementById("daysContainer");

        const newDayPanel = document.createElement("div");
        newDayPanel.classList.add("day-panel");
        newDayPanel.id = "day" + dayCount;

        newDayPanel.innerHTML = 
            '<label for="day' + dayCount + 'Select" style="color:#ffbd50 ">Select Day:</label>' +
            '<select id="day' + dayCount + 'Select" name="day' + dayCount + 'Select" class="day1Select">' +
                '<option value="Monday">Monday</option>' +
                '<option value="Tuesday">Tuesday</option>' +
                '<option value="Wednesday">Wednesday</option>' +
                '<option value="Thursday">Thursday</option>' +
                '<option value="Friday">Friday</option>' +
                '<option value="Saturday">Saturday</option>' +
                '<option value="Sunday">Sunday</option>' +
            '</select>' +
            '<div class="activity-container" id="activities' + dayCount + '">' +
                '<!-- Activities will be dynamically added here -->' +
            '</div>' +
            '<input type="hidden" id="activityCount' + dayCount + '" name="activityCount' + dayCount + '" value="0" />' +
            '<button type="button" class="btn" onclick="addActivity(' + dayCount + ')">Add Activity</button>';

        daysContainer.appendChild(newDayPanel);
    }

    // Function to add an activity panel under the selected day
    function addActivity(dayId) {
        console.log("Adding activity for day " + dayId);
        
        

        const activitiesContainer = document.getElementById("activities" + dayId);
        if (!activitiesContainer) {
            console.error("activities" + dayId + " container not found");
            return;
        }

        const activityCountInput = document.getElementById("activityCount" + dayId);
        if (!activityCountInput) {
            console.error("activityCount" + dayId + " input not found");
            return;
        }

        let activityCount = parseInt(activityCountInput.value) + 1;
        activityCountInput.value = activityCount;

        console.log("New activity count for day " + dayId + ": " + activityCount);

        const activityPanel = document.createElement("div");
        activityPanel.classList.add("activity-panel");
        
        activityPanel.style.padding = "10px";

        activityPanel.innerHTML = 
            '<label for="activityName' + dayId + '_' + activityCount + '" style=" color:#ffbd50 ">Activity Name:</label>' +
            '<input type="text" class="timetableName" id="activityName' + dayId + '_' + activityCount + '" name="activityName' + dayId + '_' + activityCount + '" required />' +
            '<label for="startTime' + dayId + '_' + activityCount + '" style=" margin-left: 10px; color:#ffbd50 ">Start Time:</label>' +
            '<input type="text" class="timetableName" id="startTime' + dayId + '_' + activityCount + '" name="startTime' + dayId + '_' + activityCount + '" required />' +
            '<label for="endTime' + dayId + '_' + activityCount + '" style=" margin-left: 10px; color:#ffbd50 ">End Time:</label>' +
            '<input type="text" class="timetableName" id="endTime' + dayId + '_' + activityCount + '" name="endTime' + dayId + '_' + activityCount + '" required />';

        activitiesContainer.appendChild(activityPanel);
        console.log("Activity added for day " + dayId);
    }
