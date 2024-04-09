# CI/CD Pipeline Documentation

## CI/CD Pipeline Environment:
- Our CI/CD pipeline operates within a cloud-based environment of GitHub so that we don't have to designate resources from personal machines to deploy and host the website hosting our application. 
- The CI/CD pipeline runs on Ubuntu because it is very common in the industry, adn it works well with our devcontainer, which also runs on Ubuntu. 
-  We are not yet in a stage of the process where network configuration is important. Github does all of the security for us, and since we are just in development configuring a custom DNS is not important to us.

## CI/CD Pipeline Tools:
- We selected GitHub Actions as our CI/CD tool due to its easy integration with our code repository which is already hosted on GitHub. GitHub Actions provides a wide range of features, including workflows, actions, and triggers, allowing us to automate various stages of the software development lifecycle. 
- Its YAML-based configuration makes it easy to define complex workflows and customize build environments. 
- GitHub Actions also offers extensive marketplace support, enabling us to leverage community-contributed actions for specific tasks, such as dependency management, testing, and deployment. 
- One of the very important things we use from this market is peace iris's github actions pages that we use in line 50. This person has already configured all of th ecode for automating an upload to github pages, so we can use this to make our job easier by only have to focus on configuring the things that need to be uploaded.
- While GitHub Actions is a powerful tool, it may have limitations in terms of scalability for larger projects as it's a free service. If the project gets too big we would have to switch to a paid web server provider.

## Automation Process:
Our CI/CD pipeline automates the entire software delivery process, from code compilation to deployment, following industry best practices. The automation process consists of the following stages:

1. Code Compilation: Upon each code push to the designated branch (e.g., main), GitHub Actions triggers the compilation process. We change to our src folder, checkout the code, and install flutter on the machine and specify version 3.19.3.

2. Unit Testing: After compilation, unit tests are executed to ensure code integrity and identify any regressions. We leverage Flutter's built-in testing framework to write and execute unit tests for individual components of our application.

3. Integration Testing: Following successful unit testing, integration tests are performed to validate the interaction between different components of our application. We may utilize tools such as Flutter Driver or Selenium for automated integration testing, simulating user interactions and verifying the behavior of our application.

4. Deployment: Once all tests pass successfully, we update flutter and utilize Flutter's build tools to compile our Flutter application for the web platform. It is very important we upload the artifacts of the code compilations so we can access them after. GitHub Actions triggers the deployment process which first redownloads the artifacts, and then uses the peaceiris/actions-gh-pages action, which deploys the compiled web application to GitHub Pages. 

By automating these processes, we aim to accelerate our development cycles, improve code quality, and ensure consistent and reliable delivery of our Flutter application. Continuous integration and deployment practices enable us to respond quickly to changes, minimize risks, and deliver value to our users in a timely manner.