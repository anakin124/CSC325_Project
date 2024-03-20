# Version Control Documentation and Tools

## Introduction
- The importance of version control in software can not be overstated. Even if you are simply working on a project on your own personal computer, and updating the software as you go, what happens if you accidentally make a bug that you can not figure out. How will you provide a working version of your software without a time machine? Especially when making one would probably be easier than fixing the bug in your code. Version control systems work as that time machine, and save every change that has happened in code giving you the safety of working code at all times.
-It maintains integrity because once you have a working version of that software that you have saved, you will never have to worry about losing all progress. You will always have a place to fall back to at a time in which all of the code worked, even if it loses a few functionalities of what you were adding in at the time.
- It maintains history because every single major and minor change is kept track of. Accidentally delete a function that was important? You can go back into the older version and copy it to paste into the current one.
- It also allows for collaboration as in systems like github changes are made by branching and pushing. The branching ensures that everyone is ok with the change that will be made, and the pushing is just how you submit the code to the version control system.

## Version Control System Used
- The VCS I used was git through github, as even though there are other options such as gitlab, and private options such as Mercer's anvil, I am most comfortable with github and it seems to be the industry standard for the most part. The other reason I chose this was because in the future I will be using github actions in order to make a build script and it will play a crucial role in my CI/CD pipeline.

## Repository Layout
- The structure of my repository is quite simple. In the projects root folder I have the basic [Project RedMe] (readme.md) and a [typical gitignore](gitignore) for flutter. 
- Most importantly theres a folder called [src] (/src) that contains all of my actual code for the project. The [lib](/src/lib) inside of this is where I will be writing most of my code as a convention of flutter. 
- I have another folder for my [devcontainer](/.devcontainer), which houses my actual [devcontainer](/.devcontainer/devcontainer.json) file so that I'm able to easily run this project inside a dev container in vscode. 
- For github actions I have a [.github](/.github) folder housing yaml files.
- Lastly I have a folder called [Documentation](/Documentation) where you can find all the documentation and important instructions/problem solving for this repository.
- If you are new to the project it is important that you read and understand the [Devcontainer Process](/Documentation/DevContainer.md).
- I try to follow typical programming practices as far as the project goes. If I am not pushing directly to main I typically name the branch master. My commit messages, like my grandmother, are short and sweet.

## Starting Out
- To get started read through the documentation on devcontainers. 
- After understanding that and opening a devocntainer, you can go into src/lib/main.dart to start working on the project.
- If you would like to make folders to organize the different dart files you utilize for navigation or object oriented programming, feel free to. However, make sure you include comments at the top of the file explaining your choice of file structuring so other people can continue it, or suggest something better.

## Common Commands and Usages
- As a general rule, every time I work on the project I clone it directly from github (usually via vscode) in order to ensure I am working on the most recent version of the project. 
- After a developer is done working on their code independently, if they want to add directly to the main branch (as I often do in my one person team), they can do:
<br> "git add ."
<br> "git commit -m 'message'"
<br> "git push"
- If you want to make a new branch then you simply do "git branch branchname" to make it. You can then do "git checkout branchname" to switch into that new branch, and all of your commits through the normal process will be placed into their instead of main. On github you will then do a pull request to merge that branch into main.

## Collaboration Features
- This pull request allows everyone else to see the changes you are trying to make, and allows everyone to test them out practically to ensure that they work and will benefit the project. Github particularly has a good messaging system where you can have conversations inside of the pull request or you can raise general issues for the repository. Conflict resolution can often be done in a civli manner through use of these systems, just in case their is a choice in the direction of the project that two members disagree about, or a dispute on the effectiveness of certain code.

## Problems Faced and Solutions
- Occasionally I got issues about pull requests from my master branch into main because the "commit histories are different". This happens when you create a new branch (in this case master) that did not come from the branch main. They have to start at the same point at the time of master's creation. I am unsure of how I messed this up, but it was fixed by deleting main in github, and renaming the remaining master into main. This solution is not acceptable later into a project, as you lose the history of code that is one of the major benefits of a VCS. Thankfully, there is precedent and a solution for this issue on Stack Overflow: https://stackoverflow.com/questions/23344320/there-isnt-anything-to-compare-nothing-to-compare-branches-are-entirely-diffe

## Summary
A version control system is extremely important for the stability of a project. Without one delivering code, collaboration between members, and the stability of the project become much worse. In particular github will be crucial as github actions will allow me to build a CI?CD pipeline in order to apply changes to my code and deploy it quickly and effectively. My workflow as a developer has changed as I have adopted the practice of cloning a repository everytime I work on it, in order to ensure I always have the newest version. After every session I then push it and delete it to keep things organized so I'm never offpage (for more than a day) with my fellow coders ona  project.
