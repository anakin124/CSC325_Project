# Development Container Environment Documentation
 This is the file containing all of the information on the necessary dependencies for using the DevContainer to work on this project, along with a short guide on how to actually get it up and running.

 A development container is a collection of all of your dependencies, source code, and data so that any project can be run anywhere. Similarly to a VM, it is all self contained. However a devcontainer does not have a hypervisor and instead relies on the host machines OS. Not having to have the OS inside of it makes it extremely lightweight and portable. Anyone in the project is able to download what we have specified as the current working container, and to work on the project in a consistent environment. That way any code will run on anyones machine in the exact same way.

 Specifically development containers will be extremely nice for Flutter later on in the project. Currently we are focussing on web apps, which means msot any machine can put it on the web and the app will look the same. Eventually I would like to be able to set up an android emulator inside of the devcontainer. Normally this would require everyone to have the android sdk installed on their device, get the emulator tools and any additional tools to assist in running, and also stay up to date on which one we are currently using. A devcontainer makes it so that everyone doesn't have to do this, and solves the problem of keeping up with complicated dependencies.

## What I Have Downloaded
- VSCode
- VSCode Extensions:
	- Dart
	- Flutter
	- Docker
	- Devcontainers
  - Cmake (eventually useful for linux application development)
  - Cmake Tools (eventually useful for linux application development)
- Docker Desktop

## What You Will Need To Download
- VSCode
- VSCode Extensions:
	- Dart
	- Flutter
	- Docker
	- Devcontainers
- Docker Desktop

## How I Set Up the Container
- I decided to use the base devcontainer.json that is made in vscode for flutter. It comes with the lines of code necessary to download the flutter and dart sdks.
- I made a .devcontatiner folder where I would make the devcontainer.json in the main folder of my project
- This base container used a universal docker image, but I was usnure of how to work with that, so I switched it to the jammy version of ubuntu.
- From here I added a customizations section, then specified vs code, and then added in all of the vscode extensions I would be using for this project. The list is up  above.

## DevContainers and VSCode
- The nice thing about vscode is that you can download the devcontainer extension, and then you can run a devcontainer inside of vscode very easily.
- The extensions used are just so that you have all of the debugging tools and extensions to make developing much easier inside of the environment.

## How To Use The Container
- First you need to install the necesary dependencies that were already listed. 
- Now we need to use VSCode devcontainer to run this development container from the image that has been created.
- In VSCode just press ctrl + shift + p, and type into the search bar “Dev Containers: Reopen in Container”
- You select the csc325_project folder in file explorer and then confirm.
- VSCode will reopen inside a development container and you can now run the flutter app inside of it.
- To exit simply click the icon in the bottom left corner, and hit the option to close the container at the bottom.
- To edit code you can simply use it as a normal vscode environment.
- In order to run the code use the command "flutter run - d web-server". At this point you will be able to access the application locally via your browser.
- Once you are done you need to make sure to put the updated code in a new branch, and then create a pull request.

## Problems I Faced, and Problems You Might Too
- The first problem I ran into was not being able to update the Flutter package while inside of the container. To do this you have to change the permissions of the user, and I did this with a post create command in my devcontainer.json
- I experienced a problem with using post create commands to update the flutter package.
- For You To Know
- Instead, once in the container, from the terminal you must run “flutter packages get” and “flutter packages upgrade”. Currently trying to add postcreate commands in the devontainer.json to fix this
- If you try to run the app not in web, you get an error that says cmake is required for linux flutter development. I am currently working on making the container Linux flutter development compatible.


## Summary
- The main benefits of containerizing your development environment are that you will never face an issue of someone in the project saying "but it works on my machine". 
- The other benefits, which will become more apparent later, are that you will not have to give new members a long list of necessary downloads and specific versions of those softwares, and then watch them spend multiple hours downloading said softwares in order for them to contribute to the project.
- One thing I've realized from this process is jsut how easy it is to set up and use a devcontainer, especially if you are pulling your docker image from somewhere else and not creating it yourself.


## Other Notes
- I attempted to download the AndroidSDK inside of my containerback when it was a Dockerfile and a devcontainer.json, as I think it’s necessary for testing your app on a vm, but I was getting unexpected errors so we will save that for a later date.
