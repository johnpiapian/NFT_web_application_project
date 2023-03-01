# NFT_web_project
In this cybersecurity project, we are constructing a simulated NFT marketplace web app with intentionally implemented security vulnerabilities. The objective is to gain a thorough understanding of these vulnerabilities through hands-on experience by finding and fixing them in a CTF setting. The purpose of this project is to deepen cybersecurity knowledge and also develop practical skills that will be useful in various real-world situations by participating in the project.

# Prerequisites
### Recommended IDE
  - IntelliJ IDEA Ultimate

### Technology used
- Java 
  - Servlet 5.0
  - JRE 17.0
- Database
  - SQLite 3.39
- Server
  - Servlet container - Tomcat 9 
- Build tools
  - Maven
- Front-end
  - JSP
  - Bootstrap


### Architectural Design
#### MVC
This project make use of MVC architecture with custom implementation to suit the project.

- **Model**
  - Every entity in the project is a model
  - Model DOES NOT contain business logic
  - Model is also used as DTO
- **View**
  - JSP files
  - Some views are served statically
  - Dynamic views are served through the controller layer
- **Controller**
  - Java Servlets
    - The controller layer that manages the flow of traffic
    - Act as a primary gateway to the backend/database
    - View layer can delegate business logic to this layer
  - Service Layer
    - Act as a bridge between the controller (Java servlets) and the DAO
    - Deals with input validation and sanitization
