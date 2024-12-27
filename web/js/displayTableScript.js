
        /**
         * Function to fetch and display timetables
         * @param {string} userId - The ID of the user
         */
        
        async function loadTimetables(userId) {
            try {
                const response = await fetch('FetchTimetableServlet?userID=' + userId);
                const data = await response.json();
                const timetableDisplay = document.getElementById("timetableDisplay");

                // Check if no timetables are found
                if (data.length === 0) {
                    timetableDisplay.innerHTML = 
                        "<p style='color: red; text-align: center;'>No Timetables Found</p>";
                    return;
                }

                // Group data by timetable name and day
                const timetables = {};
                data.forEach(function({ timetable_name, day, activity_name, start_time, end_time }) {
                    if (!timetables[timetable_name]) {
                        timetables[timetable_name] = {};
                    }
                    if (!timetables[timetable_name][day]) {
                        timetables[timetable_name][day] = [];
                    }
                    timetables[timetable_name][day].push(
                        activity_name + " (" + start_time + " - " + end_time + ")"
                    );
                });

                // Generate tables for each timetable
                let html = "";
                for (const timetableName in timetables) {
                    const days = timetables[timetableName];
                    html += 
                        '<div class="timetable-container">' +
                            '<h2>' + timetableName + '</h2>' +
                            '<table>' +
                                '<tr>' +
                                    '<th>Day</th>' +
                                    '<th>Activities</th>' +
                                '</tr>';

                    // Add rows for each day and its activities
                    for (const day in days) {
                        const activities = days[day];
                        html += 
                            '<tr>' +
                                '<td>' + day + '</td>' +
                                '<td>' + 
                                    (activities && Array.isArray(activities) 
                                        ? activities.map(function(activity) {
                                            return '<div>' + activity + '</div>';
                                          }).join('')
                                        : '') +
                                '</td>' +
                            '</tr>';
                    }

                    html += '</table></div>';
                }

                timetableDisplay.innerHTML = html;
            } catch (error) {
                console.error("Error loading timetables:", error);
                timetableDisplay.innerHTML = 
                    "<p style='color: red; text-align: center;'>Error loading timetables. Please try again later.</p>";
            }
        }

        // Dynamically load timetables for the user
        const userId = '3c7677f8-177d-4d3b-9c65-4256c5cd87b7'; // Pass user ID dynamically
        loadTimetables(userId);
    