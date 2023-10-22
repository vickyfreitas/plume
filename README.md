Plume: A Birdwatching Community App

Introduction
Welcome to Plume, a dedicated digital space crafted for birdwatching aficionados and professional ornithologists. This web application serves as a communal platform where users can share their avian encounters, explore bird sighting data from the community, and delve into a rich bird wiki for extensive information about diverse bird species. Plume also offers functionalities like user authentication, profile management, and interactive mapping to enhance user engagement and experience.

Key Functionalities
1. User Account Management:
Registration: Users can create a new account.
Sign In: Existing users can securely log in.
Email Confirmation: A process to verify the user's email address.
Password Recovery: Facilitates password resetting via email.
2. Bird Sighting Interaction:
Data Upload: Users can share their bird sighting details, images, and descriptions.
Sighting Exploration: Navigate through bird sightings shared by the community.
Personal Observations: Manage and view one’s own bird sighting data.
3. Plume Wiki:
Avian Details: Access comprehensive information about various bird species.
Community Contributions: Users can add to the bird wiki.
4. Interactive Mapping:
Location Visualization: Visualize bird sighting locations on an interactive map.
Data Filtering: Apply filters to sightings based on species, date, and more.
5. Profile Management:
Dashboard: Manage and view personal birdwatching data.
Settings: Adjust account settings and preferences.
Profile Image: Add and modify profile images.
6. Challenges & Subscription Plans:
Engagement: Participate in birdwatching challenges.
Subscription Options: Choose from various subscription plans for extra features.
7. Community Interaction and Assistance:
Contact Us: Send inquiries or request assistance.
Team Info: Learn about the developers and contributors.
8. Privacy and Usage Terms:
Privacy Policy: Understand our data usage and privacy policies.
Terms of Service: Learn about the platform's usage terms.
Technological Framework
Backend: Developed with Java and Spring Boot.
Frontend: Utilizes Thymeleaf, HTML, CSS, and JavaScript.
Database: Select as per requirement (e.g., MySQL, MongoDB).
Cloud Storage: Implemented with Google Cloud Storage.
Authentication: Secured with Spring Security.
Email Service: For dispatching verification and password reset emails.
Installation and Setup
Prerequisites
Java JDK
Maven
An IDE (e.g., IntelliJ IDEA, Eclipse)
Database Server
Google Cloud Account (for storage services)

Installation Steps

Repository Cloning:
git clone [repository_url]

Database Configuration:
Establish a database and update the application.properties file with your database credentials.

Google Cloud Configuration:
Configure a bucket for image storage and set up credentials in the application.

Build and Execute:
mvn clean install
mvn spring-boot:run

Access Plume at http://localhost:8080/index/.

Contributing

We welcome contributions, bug reports, and feature requests! Please visit the issues page. If you wish to contribute, fork the repository and create a feature branch. We appreciate your pull requests.

Licensing

Plume is licensed under the MIT License. Refer to the LICENSE.md file for details.

Gratitude

A heartfelt thank you to all contributors and testers. 
@miguel-devezas
@joanarfreitas
@JoaoSousa10

Appreciation to birdwatchers and ornithologists for their invaluable insights.
