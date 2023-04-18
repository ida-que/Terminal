## Bash - homework 1


(All the commands are written in GitBash)

### 1. Check where am I:
The `pwd` command allows us to check the current directory:
```
eanna@DESKTOP-D7U4KSH MINGW64 /d
$ pwd
/d
```
We got a response that `/d` is our current directory.<br/>
*Tip: `pwd` is an abbreviation of "print working directory"*
### 2. Make a new folder:
Let's create a folder (directory) with name **terminal_hw1** in current directory with `mkdir` command.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d
$ mkdir terminal_hw1
```
### 3. Go to the created folder:
If we want to go to the **terminal_hw1** directory, we use `cd` command and type the directory name.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d
$ cd terminal_hw1
```
As you can see in the next step, the current directory changed to `/d/terminal_hw1`, and we now work from there.<br/>
*Tip: `cd` is an abbreviation of "change directory"*
### 4. Make 3 new folders:
If we want to make 3 new directories, we can do it by the same `mkdir`, just type the names of new directories separated by space.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ mkdir folder_1 folder_2 folder_3
```
Done, we've just made 3 new folders with names **folder_1**, **folder_2** and **folder_3**.
### 5. Go to any of these 3 folders:
So, we already know what to do here, do we? For instance, we change directory to **folder_1**.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ cd folder_1
```
### 6. Create 5 files (3 x .txt, 2 x .json):
To create files, `touch` command is the best option. Like in case of using `mkdir`, you can write the names separated by a `space`, but ***remember to add formats***.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1/folder_1
$ touch file1.json  file2.json  notes1.txt  notes2.txt  notes3.txt
```
### 7. Create 3 new folders:
Using `mkdir` here again.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1/folder_1
$ mkdir subfolder_1 subfolder_2 subfolder_3
```
### 8. Show the list of current folder elements:
As you see, we are still located in **folder_1**, but added more elements there. To check what we have in this directory, the simpliest way is to use `ls` command.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1/folder_1
$ ls
```
In response, we should get:
```
file1.json  file2.json  notes1.txt  notes2.txt  notes3.txt  subfolder_1/  subfolder_2/  subfolder_3/
```

### 9. Open one of txt files &
### 10. Write anything in this file &
### 11. Save and quit:
These 3 steps have more options.<br/>
For example, we want to add some info to the **notes1.txt**. It is now empty.
#### Option 1 is `cat >` command.
This command rewrites the file, and we can use it if we definitely want to rewrite it or have an empty file.<br/>

*Tip: If we want to add something to the file which is not empty, we use `cat >>` or `vim` instead (see below).*<br/>
After adding text, press `Ctrl+C` to save and quit the file.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1/folder_1
$ cat > notes1.txt
```
As a result, we can write something to the file directly from terminal. Let`s type the following lines:
```
I can buy myself flowers
I want to break free
Somewhere over the rainbow
Cut muy life into pieces
And I will always love you
Billie Jean is not my lover
I just wanna rock
Sweet dreams are made of this
On a dark desert highway
In the town where I was born
When routine bites hard
```

#### Option 2 is using `vim` editor.
Vim editor allows us to add information to the file 
- type `vim notes1.txt` and press `Enter`
- press `Insert` which allows you to edit the file
- add text info to the file
- press `Esc`, then type `:wq` to save and quit

### 12. Go to the directory located 1 level above:
To go 1 level above (in this case, we go to the **terminal_hw1** directory), add `..` after a `cd` command.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1/folder_1
$ cd ..
```
### 13. Move any 2 files to any folder:
For example, we want to move 2 json files from **folder_1** to **folder_2**.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ mv -t folder_2 folder_1/file1.json folder_1/file2.json
```
### 14. Copy any 2 files to any folder:
Now let's try e.g. copying 2 .json files from **folder_2** to **folder_3**
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ cp folder_2/{file1.json,file2.json} folder_3
```
### 15. Find a file by name:
Use `find` command and the filename. To find in the whole directory, you can also type `.`. An example of looking for the **notes3.txt**:
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ find . -name notes3.txt
```
As a result, we see the path to this file:
```
./folder_1/notes3.txt
```
### 16. Show file content in real time, filtered by a keyword:
#### Step 1: use this combination of `tail` and `grep` for e.g. "can" keyword.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ tail -f ./folder_1/notes1.txt | grep "can"
```
Result:
```
I can buy myself flowers
```
*Note: remember that `tail` shows 10 last lines by default.* 
#### Step 2: open file manually from GUI (e.g. open txt file with Notepad)

#### Step 3: write a new line containing the keyword (can be several lines):
```
I can get no satisfaction
I believe I can fly
```
Press `Enter` and save the changes by pressing `Ctrl+S`.

#### Step 4: As a result, all the lines with the keyword are added and visible in the console:
```
I can buy myself flowers
I can get no satisfaction
I believe I can fly
```
Press `Ctrl+C` to quit the command.
### 17. Show several of the first lines from the text file:
A simple `head` command can show us the first lines (10 lines by default).
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ head ./folder_1/notes1.txt
```
And we get the following lines:
```
I can buy myself flowers
I want to break free
I can get no satisfaction
I believe I can fly
Somewhere over the rainbow
Cut muy life into pieces
And I will always love you
Billie Jean is not my lover
I just wanna rock
Sweet dreams are made of this
```
### 18. Show several of the last lines from the text file:
Like the `head` command, this `tail` command shows us the last lines (also 10 by default).
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ tail ./folder_1/notes1.txt
```
And we get the very last 10 lines in the response:
```
I believe I can fly
Somewhere over the rainbow
Cut muy life into pieces
And I will always love you
Billie Jean is not my lover
I just wanna rock
Sweet dreams are made of this
On a dark desert highway
In the town where I was born
When routine bites hard
```
### 19. Show content of a large file:
Imagine that we don`t have any large file, so we can download it from the web or create by ourselves.
#### Step 1.
Option 1: download a sample large file to the current directory manually in GUI (e.g. [here](https://www.learningcontainer.com/sample-text-file/)). <br/>

Option 2 (advanced): create a file in bash by using `for` loop (e.g. we want to create a file with a name **lorem_ipsum** and add a sample lorem ipsum paragraph 1000 times, each paragraph from a new line)<br/>
The `echo` command prints text to the file, and `>`, in fact, goes to the file content
```
 for i in {0..1000}; do echo "${i} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."; done > lorem_ipsum.txt
```
#### Step 2.
Open the file with `less` command:
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ less lorem_ipsum
```
Next, we see this file content and can navigate. To make navigation easier in this case, you can e.g.:<br/>
- type `-N` to show string numbers
- type `/Lorem` to find all "Lorem" words in this file
- after the previous command, type `/` and `Enter` to go to the next found keyword in the file
- press `space` to go to the next page
### 20. Show current date and time:
The `date` command solves this task very efficiently.
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ date
```
The response:
```
Sun Apr 16 15:13:58     2023
```
### 21. Additional tasks:
#### - Send an http request to the server http://162.55.220.72:5005/terminal-hw-request
Let's try to send e.g. a `GET` HTTP request to this server.
With a `curl` command, we can send any response. Here, we additionally specify the type of HTTP request with `-X GET`:
```
eanna@DESKTOP-D7U4KSH MINGW64 /d/terminal_hw1
$ curl -X GET http://162.55.220.72:5005/terminal-hw-request
```
Server response:
```
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   232  100   232    0     0   2137      0 --:--:-- --:--:-- --:--:--  2148<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<title>404 Not Found</title>
<h1>Not Found</h1>
<p>The requested URL was not found on the server. If you entered the URL manually please check your spelling and try again.</p>

```
The server shows `404 Not Found` status code. As well as I am concerned, it means that this server itself is working, but we got such a response that the page is not found.
#### - Write a bash script which does the steps above (# 3-8, # 13)
You can look at the script code [here](https://github.com/ida-que/hw-portfolio/blob/homework_1/homework_1/script.sh)<br/>
*Note: to run this script from the directory where the file is located, just type `./script.sh`.*