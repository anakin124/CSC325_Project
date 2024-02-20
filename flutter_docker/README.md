# Docker ReadMe
 This is the file containing all of the information on the necessray dependencies for working on this project, along with a short guide on how to actually get it up and running.
 
## What I Have Downloaded
What I have downloaded:
- VSCode
- VSCode Extensions:
	- Dart
	- Flutter
	- Docker
	- Devcontainers	
- Docker Desktop


Notes:
- I attempted to download the AndroidSDK inside of my container, as I think it’s necessary for testing your app on a vm, but I was getting unexpected errors so we will save that for a later date.


## Steps to Starting the Container
- I made a folder that had a dockerfile in it, a .devcontatiner folder with a devcontainer.json, and a workspace folder for our actual flutter application
- I ran docker build -t anakin124/flutterdevcontainer
- This made an image, that you can see if you run docker image, or if you go into the docker application.
- Next we need to use VSCode devcontainer to run this development container from the image that has been created.
- We navigate to the flutter_docker folder, we press ctrl + shift + p, and type into the search bar “Dev Containers: Reopen in Container”
- You again select the flutter_docker folder in file explorer and then confirm.
- VSCode will reopen inside a development container and you can now run your flutter app inside of it.
- To exit simply click the icon in the bottom left corner, and hit the option to close the container

## CURRENTLY EXPERIENCING PROBLEMS
- Once in the container, from the terminal you must run “flutter packages get” and “flutter packages upgrade”