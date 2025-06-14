# Making a git repository synced with Overleaf

## Setup

1. Create a repository with github.
1. Create a new project in RStudio using the github link.
1. Create a token in Overleaf by going to `Account --> Account Settings --> Project Synchronisation --> Add another token`. You'll be prompted to add this token when connecting the Overleaf project to your RStudio.
1. Create a project in Overleaf.
1. Get the git link from Overleaf by going to `Menu --> git` and copying the url.
1. Add this link as a remote called overleaf by typing the following into the terminal: `git remote add overleaf <url>`.
1. Pull the overleaf project into the repository by typing `git pull overleaf master --allow-unrelated-histories --rebase=false`.

Now you're set to go!

## Changing the go-to remote to Overleaf

To change which upstream remote is "wired" to your branch, use the `git branch` command with the upstream configuration flag.

`git branch --set-upstream-to overleaf/master`

## But what if I want to push to github?

Then, you'll have to use the `terminal` again:

`git push origin master`

## Workflow

Make sure you pull from Overleaf each time you change something there. 
This can be done by typing `git pull overleaf master` in the terminal.

It makes sense to separate your latex files from your `R` code and your images.
So, you could have a folder called `R`, one called `images` and one called `latex`.
Then, you can reference the images in your `latex` folder by using the path `images/`.

## Master and main

In overleaf, the default branch is `master`.
In your local repository, it's most likely `main`.
If this is the case, use this code:

`git pull overleaf master:main`

`git push overleaf main:master`
