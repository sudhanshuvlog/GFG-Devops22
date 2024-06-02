# Git and GitHub
- Git is a version control system.
- GitHub is a cloud-based service that hosts Git repositories.
- GitHub is a Centralized Version Control System.
- We can use both Git and GitHub to track changes in our code.

## Git

Git is a version control system used to track changes in code. It is installed locally, and a `.git` folder is created when initializing a repository.

### .git folder
- When we initialize git in a folder, it will create a .git folder.
- Initialization means running `git init` command.
- If we want git to track changes in a folder, we have to initialize git in that folder.
- .git folder contains all the information about the changes that we made in our code.

### Git Commands

- **git init**: Initializes git in a folder.
- **git status**: Checks the status of git.
- **git add**: Adds files to the staging area.
- **git commit**: Commits changes.
- **git log**: Displays commit history.
- **git reset <commit-id>**: Resets code to a previous commit.
- **git checkout <commit-id>**: Switches between commits.
- **git diff**: Shows differences between current and previous code.
- **git checkout <branch-name>**: Switches between branches.
- **git branch <branch-name>**: Creates a new branch.
- **git merge <branch-name>**: Merges a branch with the master branch.
- **git clone <repo-url>**: Clones a repository from GitHub.
- **git remote add origin <repo-url>**: Adds a remote repository.
- **git push origin <branch-name>**: Pushes code to the remote repository.
- **git pull origin <branch-name>**: Pulls code from the remote repository.

## GitHub

GitHub hosts code facilitates collaboration, and tracks changes. Authentication can be done via HTTPS or SSH.

### Authentication in GitHub

- Use HTTPS with a username and password/Github token.
- For SSH, generate and add an SSH key with `ssh-keygen` command.

## GitKraken

GitKraken is a GUI tool for Git. It visualizes changes, branches, and commits.

### Git Branches And Commands

● Branching - Branching is a concept of git, Which provides us with a good way of
management of our code and team, For example, we know that In a project, different
developers are working on different functionalities, then making the changes directly
in the master branch is the worst practice, good practice is to create respective
feature branches and make changes there, And only after the permission of the reviewer
merge it to the master branch.

- #git branch -> It will tell us all the branches we have in the current repository And
will highlight our current branch, by default it is “master” or “main”
- #git branch dev1 -> It will create a new branch “dev1” and it will have a whole
timeline reference of the “master” branch
- git init - To initialize a git repository
- #git status -> It shows us the status of our git repository, it tells us which files currently
git is tracking.
- #vim file1.txt -> “Hello Git learners” - Created a file with data
- #git add file1.txt -> It will add the file in the staging area
- #git ls-files -> It shows all the files in the staging area
- #ls - it will show all the files in the working area
- #git show -> It shows all files in the commit area.
- #git commit file1.txt -m “committing the first time” -> it will commit the file in
“Commit Area” with the given message

- Every time we do a commit, It gets a unique id from git, that “id” is called as “commit
id”
- #git log - It will give details of our commit, like author name, date, time
- #git restore --staged file1 -It will restore the “file1” from the staging area back to
the working area
- #git show <first 5 letters of commit id> -> It will show info about that particular
commit, and also will tell what difference it has from the previous version
- #git show -> By default it shows the details of the latest commit.
- #git ls-tree –name-only HEAD -> It will show all the files in the commit area till the
“HEAD Commit”
- HEAD - Git has given a nickname to the latest commit as the HEAD
- #git show HEAD - It will show details about the latest commit.
- #git show HEAD~1 - it will show details of the previous commit of the “HEAD”
commit
- #git diff <commid id 1> <commit id 2> -> It will show the code difference between
both the commit
- .gitignore -> Create a file named “.gitignore” Here we can mention all the files and
folders which we don’t want “git” to track in my repository

● Github- Github is a centralized version control system(CVCS), Where developers
can work collaboratively in a team by storing their code in a centralized location like
GitHub. We can also create our own CVCS, But GitHub is one of the famous and
most used CVCS systems.

● README- The default readme file contains the repository name and some basic
instructions. The file format is ‘md’, which stands for Markdown documentation. It is a
lightweight markup language that can be easily converted to text. While creating a
repository in GitHub, if we initialize the repository with the “Readme.md” file then it
will create all three areas ( working area, staging area and commit area) for us,
Otherwise, If we don’t create a readme.md file then it will just create a dummy
workspace, And we will have to upload all these areas from our local repository.

● Checkout Markdown cheatsheet Here -
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatshee

## Git Reset

- **git reset --soft HEAD~1**: Resets the commit history to the previous commit, Will keep the changes in the staging area, and will not make any changes on the working area
- **git reset --mixed HEAD~1**: Resets the commit history to the previous commit, It will unstage the changes, and will not make any changes to the working area 
- **git reset --hard HEAD~1**: Resets the commit history to the previous commit, discarding changes from everywhere.
- In soft and mixed reset, changes remain in the staging area and working directory, respectively, allowing for recommit.
- In a hard reset, changes are lost, and the commit history cannot be recovered.
- Soft and mixed reset allow retrieval of commit history with the old commit ID.


## Important link(GitCheatSheet) - 

1) GitHub Git Cheat Sheet - https://education.github.com/git-cheat-sheet-education.pdf
2) Git Cheat Sheet By GFG - https://www.geeksforgeeks.org/git-cheat-sheet/
3) Merge Strategies -       https://git-scm.com/docs/merge-strategies
