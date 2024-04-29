# Project Final Report

## Introduction
Continuous Integration and Continuous Deployment (CI/CD) pipelines play a pivotal role in modern software development by automating and streamlining the process of building, testing, and deploying software updates. These pipelines enable development teams to rapidly iterate on their codebase while maintaining a high level of quality and reliability. In a CI/CD pipeline, code changes are automatically integrated into a shared repository multiple times a day, allowing developers to catch and fix bugs early in the development cycle. Once integrated, automated tests are run to verify the functionality and stability of the codebase. Upon successful testing, the changes are deployed to production environments seamlessly, reducing the time between code changes and their availability to end-users. By promoting automation, collaboration, and rapid feedback loops, CI/CD pipelines empower development teams to deliver software faster, more frequently, and with greater confidence, ultimately enhancing the overall efficiency and effectiveness of the software development process.

## DevContainer Environment
All of this can be found in the [DevContainer.md](/Documentation/DevContainer.md).

## Source Code Version Control Tools
All of this can be found in the [VersionControl.md](/Documentation/VersionControl.md).

## CI/CD Pipeline Environment
All of this can be found in the environment section of the [Pipeline.md](/Documentation/Pipeline.md).

## CI/CD Tools
All of this can be found in the tools section of the [Pipeline.md](/Documentation/Pipeline.md).

## Deployment Environment
A Deployment Environment for a web-based Flutter application using GitHub Pages typically involves a straightforward and seamless process leveraging the integration capabilities of GitHub Actions. First, the Flutter web application codebase is hosted on a GitHub repository. Utilizing GitHub Pages allows for easy hosting of static websites directly from the repository. With Flutter's ability to compile to web, the application codebase is structured to include the necessary configuration files, such as index.html and any required assets. Upon pushing changes to the repository, GitHub Actions triggers a workflow configured to build the Flutter web application and deploy it to the designated GitHub Pages branch. This automated process ensures that the latest version of the application is consistently deployed and accessible to users. We can also have automated testing that goes on during this process so that if the push breaks our project it will not go through. There were some important settings to change in our file though. The deploy source needs to be from a branch, and that branch should be the gh-pages branch in /root. Also in the Actions settings we need to give the Workflow read/write permissions. Without doing these things the page will not deploy properly. Overall, the Deployment Environment of GitHub Pages for a web-based Flutter application streamlines the deployment process, ensuring efficiency and reliability in hosting and maintaining the application.

## Flutter Web Application
I decided to make a simple calculator for my flutter app to help familiarize me with dart as a language and flutter's widget system. First I had to define the user interface (UI) elements, such as buttons and display screens, using Flutter's widget system. These widgets are arranged in a layout that mimics a traditional calculator interface, with buttons representing numbers, arithmetic operations, and additional functions like clear and equals. Next I implemented the logic behind the calculator's operations, handling user input and performing calculations based on the user's interactions. This logic includes parsing input, executing mathematical operations, and updating the display accordingly. Throughout the development process, testing was crucial to ensuring the calculator functions correctly across different devices and screen sizes. Bug fixing in flutter is made easy by saving the application and typing r into the terminal for a hot refresh. Overall, creating a calculator in a Flutter application involves a combination of UI design, logic implementation, and thorough testing to deliver a reliable and user-friendly tool for mathematical calculations.

## Conclusion
In conclusion, our project successfully implemented a development container environment capable of creating Flutter applications, leveraging GitHub as our source control platform, and utilizing GitHub Actions for automated deployment through a CI/CD pipeline. Throughout this endeavor, we gained valuable insights into the importance of automation in modern software development, particularly in streamlining the build, test, and deployment processes. However, we also encountered several challenges along the way. One was ensuring that the devcontainer had the correct permissions so we could use the terminal freely. I also faced issues in actually deploying, as I already had a github pages up, so the proccess was a bit more difficult and complicated for me. Moving forward, potential improvements for our CI/CD pipeline and application include refining our automated testing procedures to increase test coverage and reliability, optimizing the deployment process for faster and more efficient updates, and enhancing the calculator app itself to give users better UI and more functions to use. Overall, this project has underscored the significance of CI/CD pipelines in facilitating continuous integration and deployment, allowed me to learn a new language, and taught me good workplace practices for working on a multiperson project.






