# About the Repository

This is a new flutter project. This project was set up for the CSC325 class on application development. The actual app will start out very simple as the focus for this repository will be on having a standardized development environments through use of docker containers, and eventually to develop a continuous integration pipeline for automation of sending updates.

# The Flutter App

It started out as the base project for flutter app creation (a counter), but as of 2/17 The app now works as a basic calculator. I plan to make future changes to increase functionality and the looks of the UI.


# The Docker Container
We are using Docker containers in order to standardize our development environment. I am using a ubuntu docker image, and configuring it to my liking with the devcontainer.json file. This Docker is using ubuntu 22.04, jammy. For more info there is a readme in the .devcontainer folder specifically for necessary dependencies, and how to start up the container.

# How to Work on the Project 
To work on the project, you first need to clone this repo, and download the necessary dependencies (found in the .devcontainer/README.md).  Next you will follow the instructions to start up a development container, so that you can work on code in a way where any changes you make are sure to run for everyone involved in the project. Lastly you will push the updated project to a new branch of this repo, and submit a pull request detailing the changes you've made. Finally others will look at those changes to ensure they are beneficial before we merge them into the main branch.
