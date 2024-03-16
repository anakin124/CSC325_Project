# Docker ReadMe
 This is the file containing all of the information on the necessary dependencies for working on this project, along with a short guide on how to actually get it up and running.

## What I Have Downloaded
What I have downloaded:
- VSCode
- VSCode Extensions:
	- Dart
	- Flutter
	- Docker
	- Devcontainers
  - Cmake
  - Cmake Tools
- Docker Desktop


Notes:
- I attempted to download the AndroidSDK inside of my containerback when it was a DOckerfile and a devcontainer.json, as I think it’s necessary for testing your app on a vm, but I was getting unexpected errors so we will save that for a later date.


## Steps to Starting the Container
- I made a .devcontatiner folder with a devcontainer.json in the main folder of my project
- Now we need to use VSCode devcontainer to run this development container from the image that has been created.
- In VSCode just press ctrl + shift + p, and type into the search bar “Dev Containers: Reopen in Container”
- You select the csc325_project folder in file explorer and then confirm.
- VSCode will reopen inside a development container and you can now run the flutter app inside of it.
- To exit simply click the icon in the bottom left corner, and hit the option to close the container at the bottom

## CURRENTLY EXPERIENCING PROBLEMS
- Once in the container, from the terminal you must run “flutter packages get” and “flutter packages upgrade”. Currently trying to add postcreate commands in the devontainer.json to fix this
- You get an error that says cmake is required for linux flutter development, but i am unsure of how to download linux to the container.
