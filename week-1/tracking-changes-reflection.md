**How does tracking and adding changes make developers' lives easier?**
  Tracking and adding changes gives developers an extra step in the refining process before committing fully to changes they have made to files. Rather than sending all changes in at once in a disorganized manner, developers use the _track_ and _add_ features to group relevant edits into logical blocks to create a snapshot of their edits.

**What is a commit?**
  A commit is an action that takes all the staged edits to a file and commits them to the project history of the local repository. *Git commit* commits the edited file to the current branch, and allows developers to leave messages to describe what their edits are. Other developers can read the commit messages and have a moderately specific idea of the edit history the file has gone through.

**What are the best practices for commit messages?**
  Commit messages should be specific enough that a new developer can understand what was done without having to open the file.

**What does the HEAD^ argument mean?**
  The HEAD^ argument is a reference to the most recent commit.

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**
  The 3 stages of a git change are:
    *Edit*
    *Stage*
    *Commit*
  To _edit_ a file, open it in a text editor and make whatever changes you like.
  To _stage_ an edited file, make sure you are operating in your created branch, and use the _git add <file>_ command to send the edited file to the stage.
  To _commit_ a change, be sure that you are happy with your edits and use the _git commit -m "<add message here>"_ command. This will commit your changed file to the local repository, and your message will help you keep track of the history of your changes.

**Write a handy cheatsheet of the commands you need to commit your changes.**
  *git status* - what files are in what state
  *git add* - track new files and stage edits
  *git commit* - commit changes to local repo

**What is a pull request and how do you create and merge one?**
  A pull request is a mechanism for a developer to notify interested parties that they have made changes to their feature branch. It is also a forum where other developers can give feedback and have a conversation about the features before merging them to the master branch.
    You create a pull request by opening your GitHub profile and navigating to the repository with the changes you want to have pulled. Review your base and comparison branches (Base will likely be your master branch) and click _create pull request_. Enter a title for the request and any additional description you feel is necessary, and click _create pull request_ again. This will send a notification to anyone that is able to merge your request.
      To merge a pull request, navigate to your _pull requests_ list and review which pull request you would like to merge. Then click _merge pull request_ and add a message.

**Why are pull requests preferred when working with teams?**
  Developers can group tasks and work on different features of the software simultaneously without affecting the master version of the work, and when they can submit their edits for the rest of the team to review before committing the changes.Also, each developer can work on their features remotely, so the whole team does not have to assemble.