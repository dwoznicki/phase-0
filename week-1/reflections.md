#1.1 Think About Time Reflection

There are several different time management and productivity techniques listed here. I've already practiced meditation prior to reading about it, but I didn't know how much scientific study had gone into the positive effects of it. We'd already covered mindfulness and the growth mindset in earlier videos and resources, but it was interesting to see them here. I thought the Pomodoro Technique was interesting, though perhaps a bit too rigid for my tastes. I thought that the author of Learn Ruby the Hard Way had a number of good points for keeping on track when learning something new. The interview with Charles Duhigg and Ramit Sethi brought up a great point that to learn something new, you have to start doing it and make a habit instead of endless preparation.
Perhaps the most important time management technique listed here is Time Boxing. Time Boxing is a way to work where instead of setting a goal and saying, "I will reach this goal today," you set a period of time to work on that goal and spend the whole time working. This is better for making habits, in my opinion, since a goal could take a varying amount of time to complete depending on difficulty, prior knowledge, basic comprehension, or even day-to-day mood. Setting a Time Box and sticking to it is more stable, and will prevent you from getting burned out as well from overworking on some days.
My current strategy for time management looks similar to the goal method I just described. I set some goals for myself on any given day, and see to it that I complete them. This works okay for my current lifestyle where my responsibilities are few, but I don't expect it to continue working now that I'm starting Phase 0. My plan to keep on track in Phase 0 is to employ a mix of some of these strategies. Taking from Learn Ruby the Hard Way and the Create a Habit, I plan to spend some time absolutely every day dedicated to coding/Phase 0 work. I'll take some break days, as suggested by Charles Duhigg, where I'll study less, but I really do believe that creating a habit is essential. In addition, I'm going to give myself a daily Timebox to work with. I don't think I'll do the Pomodoro Technique; it's too strict. But my plan is to give myself a daily timebox of 4-6 hours of work for Phase 0. I want to be flexible to start. Perhaps I'll ease myself into it with shorter work periods to start. Perhaps I'll come up with a more structured working schedule later. But for now I'm going to plan to work 5 hours every day, and keep track of my time spent.

#1.2 The Command Line Reflection

1. A shell is an interface that takes input, or commands, and executes them. It takes commands in the form of typed input. Bash (Bourne Again Shell) is the command language used to interact with the GNU operating system, like Unix. There are other shells available, but Bash is the default.
2. For me, the most challenging thing was navigating the divide between the Git Bash version I installed for windows and the Linux/Mac OSX in the Crash Course. Some of the commands were 
missing from my version, and I had to find how to integrate them in (with moderate, but not total success).
3. I was able to successfully use all the commands I could install. I never managed to get 'sudo' working though, no matter what I tried. I had success with everything else though.
4. It seems to me that the most important commands to know would be the most basic. So: 'cd', 'ls', 'cp', 'rm', 'cat', etc. Additionally, the flow modifiers '<', ''>', '|', and '<<'' are all really helpful for refactoring your code. Perhaps the most important command, though, is the 'help' command which you can always refer to if you're having trouble.
5. Okay, off the top of my head:
-'pwd' prints working directory, ie. shows what directory you're in
-'ls' lists the files and directories in a given directory; the current one if another isn't 
specified
-'mv' moves a file or directory, but it looks like it actually just renames it
-'cd' changes directories; very important for navigating
-'../'' goes back a directory when paired with cd
-'touch' makes a new, blank file
-'mkdir' makes a new, empty directory
-'less' displays the contents of a file page by page; you can navigate with Space or PgUp and 
PgDn
-'rmdir' deletes a directory if it's empty
-'rm' deletes a file, and can also be used to delete a directory with files in it
-'help' prints info about a command

#1.4 Forking and Cloning Reflection

Go to github.com. If you haven't already, you'll need to make an account. In the upper right hand side of the page, you'll see a '+' sign. Click it and select "New Repository" from the drop-down menu. You'll be prompted to give your repository a name. Naming convention is to make a name without spaces. If you want to add a space, use - instead. Select the Public option so that anyone can see it. You can still control who can edit it. Select a license from the drop down menu and click Create Repository.
You will then be taken to the page with the new repository (or repo). To fork it, or create a copy for your own use, click the 'Fork' button in the upper right hand side of the screen, below the '+' sign. This will make a copy linked to your own account which you can edit freely. The top of the page should read "your_username/new_repository."
To clone the repo onto your computer for editing purposes, you'll need command line. First, on the right side of the GitHub page, you'll see a section called HTTPS clone URL. Copy the github.com URL there. Next, go into command line and navigate to a directory where you'll want to store the repo. Type in the command 'git clone' and paste the URL in. Press enter, and your computer will download the repo to the specified directory. That's it!
You want to fork a repository as opposed to creating a new one so that your version of the repo will be updated whenever a commit is made to the master branch. Otherwise, you'll constantly need to update the repo with changes others have made yourself.

I didn't have any trouble setting up git or GitHub. When I made my GitHub account though, my first impressions were that everything was really daunting. I didn't understand the words they were using or the initial steps they have on the home page. It all looked so technical and beyond me. But after learning what the words mean and doing it a bit myself, I feel a bit more confident about git and GitHub. So I guess what I learned is that even if something looks difficult, not to be discouraged.
