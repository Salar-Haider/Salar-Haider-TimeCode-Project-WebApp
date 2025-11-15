# TimeCode WebApp

A web application to help users create and manage their weekly timetables and activities across devices (PC, laptop, or mobile). Built with Java (Apache NetBeans) and Supabase for the backend.

---

## Table of Contents

1. [About](#about)  
2. [Features](#features)  
3. [Architecture & Technology Stack](#architecture--technology-stack)  
4. [Getting Started](#getting-started)  
   - [Prerequisites](#prerequisites)  
   - [Installation](#installation)  
   - [Running Locally](#running-locally)  
5. [Usage](#usage)  
6. [Future Roadmap](#future-roadmap)  
7. [Contributing](#contributing)  
8. [License](#license)  
9. [Contact](#contact)  

---

## About

TimeCode WebApp is designed to simplify time management by letting users visually map out their weekly schedule. Whether you're planning study sessions, work tasks, or personal activities, this tool provides an intuitive, cross-device experience.

---

## Features

- **Weekly Timetable Creation** — Create, edit, and view weekly schedules.  
- **Activity Management** — Add tasks or events, set times, durations, and categories.  
- **Responsive Design** — Works smoothly on desktops, laptops, and mobile devices.  
- **Persistent Storage** — Data is stored using **Supabase**, offering real-time database functionality.  
- **User Authentication (Optional)** — Users can sign in (if you implement it) to save their individual timetable.  
- **Easy Deployment** — Easily deployable with standard Java web technologies.

---

## Architecture & Technology Stack

- **Backend**: Java (built with Apache NetBeans)  
- **Database**: Supabase (PostgreSQL + Realtime)  
- **Frontend**: HTML, CSS, JavaScript  
- **Build Tool**: Apache Ant / NetBeans Build System (depending on your project setup)  
- **Hosting / Deployment**: (You can describe how you deploy — e.g., on a VPS, Netlify, or other)  

---

## Getting Started

Here’s how you can set up the project locally.

### Prerequisites

- Java JDK (version compatible with your NetBeans project)  
- Apache NetBeans IDE (or any Java IDE of your choice)  
- Supabase account (for database)  
- Git  

### Installation

1. **Clone the repository**  
 
   git clone https://github.com/TimeCode-Planner-WebApp.git
   
   cd Salar-Haider-TimeCode-Project-WebApp  


3. **Open the project in NetBeans**

   * Launch NetBeans
   * Use “Open Project” → navigate to the cloned folder → select the project

4. **Configure Supabase**

   * Create a new project in Supabase
   * Obtain your Supabase URL and anon/public API key
   * Add these credentials in your Java application (e.g., in a `config` file or environment variables)

5. **Build project**

   * Use NetBeans’ build command or run `ant build` (if your project uses Ant)
   * Resolve any dependencies

### Running Locally

* Run the application from NetBeans (Run → Run Project)
* Alternatively, generate a WAR/JAR and deploy it to a servlet container (like Tomcat)
* Once the application is running, open your browser and go to `http://localhost:<port>/` (adjust according to your setup)

---

## Usage

1. **Create a Schedule**

   * Open the “Create Timetable” page
   * Add days, time slots, and activities
2. **Add Activities**

   * Click “Add Activity”
   * Fill in details (title, description, time, day)
3. **Save / Edit / Delete**

   * Save your timetable to Supabase
   * Edit or delete existing entries as needed
4. **View Your Timetable**

   * Check your weekly schedule in a visual layout
   * Use different views if implemented (e.g., daily, weekly)

---

## Future Roadmap

Here are some ideas for features you can add or improve:

* ✅ **User Authentication** — Enable user accounts so each user can save personal timetables.
* 🔄 **Real-Time Synchronization** — Use Supabase real-time features to sync changes across multiple devices.
* 📅 **Recurring Events** — Allow setting weekly recurring tasks or reminders.
* 🔔 **Notifications / Reminders** — Email or push reminders for upcoming tasks.
* 🎨 **Theming / UI Improvements** — Dark mode, drag-and-drop UI for timetable editing.
* 📱 **Mobile App** — Extend to a native mobile app (React Native / Flutter) for better mobile experience.

---

## Contributing

Contributions are welcome! Here’s how you can help:

1. Fork the repository
2. Create a branch: `git checkout -b feature/your-feature`
3. Make your changes & commit them: `git commit -m "Add some feature"`
4. Push to your branch: `git push origin feature/your-feature`
5. Open a pull request

Please follow these guidelines:

* Write clear, descriptive commit messages.
* Add comments or documentation for any major changes.
* If adding a new feature, include tests or manual test steps.

---

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.

---

## Contact

**Salar Haider**

* GitHub: [@Salar-Haider](https://github.com/Salar-Haider)
* Email: *(your email here)*

