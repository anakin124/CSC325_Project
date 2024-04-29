# About the Repository
This is a new flutter project. This project was set up for the CSC325 class on application development. The actual app will start out very simple as the focus for this repository will be on having a standardized development environments through use of docker containers, and eventually to develop a continuous integration pipeline for automation of sending updates.

# The Flutter App
My plan is to have a very nice looking calculator app with 2 modes, one of which is a very basic calculator, the other will be one with more complex operations and parenthesis. I also plan on making the ui visually pleasing and user friendly. I will put any major (and sometimes minor) changes in the README for it in the src folder. This will also include any problems the app is facing, as well as a more detailed description of the goals and the current state.

# The Docker Container
We are using Docker containers in order to standardize our development environment. I am using a ubuntu docker image, and configuring it to my liking with the devcontainer.json file. This Docker is using ubuntu 22.04, jammy. For more info there is a readme in the .devcontainer folder specifically for necessary dependencies, and how to start up the container.

# How to Work on the Project 
To work on the project, you first need to clone this repo, and download the necessary dependencies (found in the .devcontainer/README.md).  Next you will follow the instructions to start up a development container, so that you can work on code in a way where any changes you make are sure to run for everyone involved in the project. Lastly you will push the updated project to a new branch of this repo, and submit a pull request detailing the changes you've made. Finally others will look at those changes to ensure they are beneficial before we merge them into the main branch.
