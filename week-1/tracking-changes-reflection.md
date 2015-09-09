How does tracking and adding changes make developers' lives easier? 
It allows a developer to go back and see what changes were made to a code, who made them, and when they were made. If there's a fatal error in an updated code, the developer can revert to an earlier state.
What is a commit?
A commit is like a save state for a project. A developer makes a commit when they want to save the changes they made to a code. Developers can navigate between commits if desired.
What are the best practices for commit messages?
The common convention for commit messages is to write in the imperative, eg. "Update code" as opposed to "Updated code" or "Updates code". This is to let other developers know what will happen when they pull the committed changes. When formatting, it's important to leave a full blank line between headers and explanation paragraphs since some tools will get confused without it. Bullet points are fine too.
What does the HEAD^ argument mean?
The HEAD^ arguments will revert to the prior commit made. If you want to go back more than one commit, use HEAD~3, HEAD~4, etc.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 stages of a git change are making the changes, adding the changes, and committing the changes.
When you make a new file, you first want to make a new branch to work in using the command 'git checkout -b feature-branch-name'. After you make the changes, you need to add it to git using the command 'git add .' This adds the file to the stage where you can start to commit changes made. So the next step is to commit your chages. Use the command 'git commit -m "Commit message goes here"' to commit the changes you made. 
Write a handy cheatsheet of the commands you need to commit your changes?
1. git checkout -b feature-branch-name
2. git add .
3. git commit -m "Commit message goes here" *or* git commit -v for more detailed messages
4. git push origin feature-branch-name
5. on GitHub, Create pull request -> Merge pull request -> delete old branch
6. git pull origin master
What is a pull request and how do you create and merge one?
First, you want to push the commit changes to your master branch. To do this, you want to use the command 'git push origin feature-branch-name', where feature-branch-name is the name of the branch you've been editing in. This will push the changes to GitHub. On github.com, you need to click the green 'Compare, review, create a pull request' button in the repo you've been working in. Click 'Create pull request' button, and again on the next page. Finally, click the 'Merge pull request', 'Confirm merge', and then delete the old branch since your master branch will have already been updated. To sync the master branch on your computer with the remote one on GitHub, use the 'git pull origin master' command.
Why are pull requests preferred when working with teams?
By making a pull request, you can merge your changes in with the changes made by your team. This will help to avoid overriding someone else's commits when pushing your own changes.