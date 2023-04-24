## Bash - homework 2

(All the commands are written in GitBash)

### 1. Make a folder named dir_1:
```
$ mkdir dir_1
```
### 2. Go to the folder dir_1:
```
$ cd dir_1
```

### 3. Create a folder named inner_dir_1:
```
$ mkdir inner_dir_1
```
### 4. Check where you are:
```
$ pwd
```
Result:
```
/d/terminal_hw2/dir_1
```

### 5. While located inside the dir_1 folder, create an empty text file named tf_1.txt:
```
$ touch tf_1.txt            # touch is the best command to create empty files
```

### 6. While located the dir_1 folder, create a text file named tf_2.txt using the command cat with the following lines:
- the first 1
- the second 2
- the third 3
```
$ cat > tf_2.txt                    # Then it is possible to type the 3 lines
the first 1
the second 2
the third 3                         # After this line, press Enter and Ctrl+D to save and quit
```

### 7. Go to the inner_dir_1 folder:

```
$ cd inner_dir_1
```
### 8. Use the `cat` command to create a text file named tf_3.txt with any lines:
```
$ cat > tf_3.txt                    # Similar to step 6 - type a command and then 3 lines
This is the rhythm of the night
He was turned to steel
Pressure: pushing down on me        # Enter and Ctrl+D
```
### 9. Use the `cat` command to add the line "the second 2" to the text file tf_3.txt:
```
$ cat >> tf_3.txt                   # To add some lines with a cat command, just add one more <.
the second 2
```
Note: basically, `>` operator is used for redirecting the output to files and rewriting the files. `>>` operator is redirecting the output, adding it to the end of the file.

### 10. Use the `cat` command to add the line "the sec 2" to the text file tf_3.txt:
```
$ cat >> tf_3.txt
the sec 2
```
### 11. Use the `cat` command to add the line "the sec 3" to the text file tf_2.txt:

As my current directory is **inner_dir_1** (a level below), I have to show the path to the file:
```
$ cat >> ../tf_2.txt
the sec 3
```

### 12. Use the `cat` command to add the line "the SeCoNd 2" to the text file tf_3.txt:
```
$ cat >> tf_3.txt
the SeCoNd 2
```
### 13. Use the `cat` command to add the line "the seConD 2" to the text file tf_2.txt:
```
$ cat >> ../tf_2.txt               # Going 1 level above one more time
the seConD 2
```
### 14. Create a text file named tf_4.txt with 15 lines:
The `seq` command with `cat` combination is the best option, if we want just numbers on each line:
```
seq 15 | cat > tf_4.txt
```

### 15. Create a text file named tF_5.txt with 13 lines:
Can use sequence here, but what if we want to add some text to each line?</br>
Let's try with additional _"string:"_ text and the numbers (need to create a similar `for` loop):
```
$ for string_num in {1..13}; do echo "string: ${string_num}"; done > tF_5.txt
```
_Note: a sequence starts with 1 by default, but in case of loop we need to specify the range, **the last number of range is included to the range**._
### 16. Display a list of all files in the folder:
```
$ ls                                # Just to remind, our location was inner_dir_1 folder
```
Result:
```
tf_3.txt  tf_4.txt  tF_5.txt
```
### 17. Go out of the inner_dir_1 folder:
```
$ cd ..
```
### 18. Display the contents of the file tf_3.txt in the terminal:
```
$ cat inner_dir_1/tf_3.txt
```
Result:
```
This is the rhythm of the night
He was turned to steel
Pressure: pushing down on me
the second 2
the sec 2
the SeCoNd 2
```
### 19. Find the path to the file tf_4.txt:
`find` command is the best way to search for the files and their paths. Also, adding `-name` parameter to show that we want to search for the names:

```
$ find ./ -name "tf_4.txt"
```
Result:
```
./inner_dir_1/tf_4.txt
```
### 20. Clear the contents of the file tf_4.txt without deleting the file itself:
Let's use the `>` operator and redirect the empty output to the file:
```
> inner_dir_1/tf_4.txt
```
### 21. Find the paths to files that have "tf" in their name:
Here we can use wildcards. In this case, asterisks (*) mean that any symbols can be in the beginning or the ending of the searched name keyword:

```
$ find ./ -name "*tf*"
```
Response:
```
./inner_dir_1/tf_3.txt
./inner_dir_1/tf_4.txt
./tf_1.txt
./tf_2.txt
```
### 22. Find the paths to files that have "tf" in their name with letters in any case:
Here we should ignore case sensitivity by adding `-i` (ignore). We can add it to the `-name` parameter:
```
$ find ./ -iname "*tf*"
```
Result:
```
./inner_dir_1/tf_3.txt
./inner_dir_1/tf_4.txt
./inner_dir_1/tF_5.txt
./tf_1.txt
./tf_2.txt
```
_Note: here, we also see tF_5.txt file._
### 23. Find lines in files that contain the letter combination "sec" in the current folder:
`grep` command is being used to search for strings **inside the files**. </br>
We are in **dir_1** folder, but also have an **inner_dir_1** inside. It was not mentioned whether we include the inner folder or not.
Let's try to search ONLY in the **dir_1** :</br>

Option 1: command execution to all the files:
```
$ grep "sec" ./*                    # an asterisk (*) means searching for strings in all the files
```
As a result, we can see that there was a try to execute command to the inner folder, and appropriate message is shown:
```
grep: ./inner_dir_1: Is a directory
./tf_2.txt:the second 2
./tf_2.txt:the sec 3
```
Option 2: if we can filter the files by formats, we can also skip the inner directory, so let's do this:
```
$ grep "sec" ./*.txt
```
As a result, we see no message:
```
./tf_2.txt:the second 2
./tf_2.txt:the sec 3
```
Option 3: if we don't know the files formats, we can just use `-s` parameter as a silent option for not displaying the message:
```
$ grep -s "sec" ./*.txt
```
As a result, we also see no message:
```
./tf_2.txt:the second 2
./tf_2.txt:the sec 3
```
On the other hand, what if we want to search NOT ONLY in **dir_1** folder, but also in **~inner_dir_1**?
See details in step 28 :)

### 24. Find lines in files that contain the letter combination "sec" in any case in the current folder:
We already know that we can ignore the case sensitivity by `-i`, it also works fine with `grep`.
```
$ grep -i "sec" ./*
```
Result:
```
grep: ./inner_dir_1: Is a directory
./tf_2.txt:the second 2
./tf_2.txt:the sec 3
./tf_2.txt:the seConD 2
```
_Note: we can also use `-is` instead of `-i` if we don't want to show the message about inner directory._
### 25. Find lines in files that contain only the "sec" letter combination in the current folder:
To search for the whole words, we have to use `-w` with `grep`:

```
$ grep -w "sec" ./*
```
Result:
```
grep: ./inner_dir_1: Is a directory
./tf_2.txt:the sec 3
```
_Note: to show without message, you can also add `-s` similar to the previous steps._

### 26. Find lines in files that contain only the "sec" letter combination in any case in the current folder:
This is just a combination of 2 previous steps:
```
$ grep -iw "second" ./*
```
We get as same result as it was in the very previous step, because we have all the "sec" words lowercase-only:
```
grep: ./inner_dir_1: Is a directory
./tf_2.txt:the sec 3
```
_Note: to show without message, you can also add `-s` similar to the previous steps._

### 27. Find lines in files that contain the letter combination "second" in the current folder:
So, let's try recursive search with `grep -r`, which allows us to search also inside inner folders of the current directory:
```
$ grep -r "second" ./*
```
Result - command executed also to the inner_dir_1:
```
./inner_dir_1/tf_3.txt:the second 2
./tf_2.txt:the second 2
```
### 28. Find lines in files that contain the letter combination "second" in any case in the current folder:
Using `grep -ir`, no more words :)
```
$ grep -ir "second" ./*
```
Result:
```
./inner_dir_1/tf_3.txt:the second 2
./inner_dir_1/tf_3.txt:the SeCoNd 2
./tf_2.txt:the second 2
```
### 29. Find lines in files that contain the letter combination "second" in all subfolders:
If we want to look for such strings in all subfolders, ignoring the current folder, we have use a simple `grep` and specify the path and use asterisks (*):
```
$ grep "second" ./*/*                       # The 1st * means all the subdirectories, the 2nd * means all the files in subdirectories
```
Result:
```
./inner_dir_1/tf_3.txt:the second 2
```

### 30. Find only the path and file name in lines that contain the letter combination "second" in the current folder:
It is specified neither is it recursive search nor the full/relative path must be shown. Let's try some combinations then.</br>
Option 1: use `grep -ls` combination. `-l` shows only files with matches (no duplicates). And, as we already know, `-s` means no messages in the output.
```
$ grep -ls "second" ./*                     #  Non-recursive, with relative path
```
Result:
```
./tf_2.txt
```
Option 2: using `grep -rls` combination with added `$PWD` in the output:
```
$ grep -rls "second" $PWD                   #  Recursive, with full path
```
Result:
```
/d/terminal_hw2/dir_1/tf_2.txt
/d/terminal_hw2/dir_1/inner_dir_1/tf_3.txt
```
### 31. Find all lines in all files that do not contain the combination "second":
To do this, I used recursive search with `-v` added (this allows us to do a "reverse")
```
$ grep -rv "second" ./
```
Result:
```
./inner_dir_1/tf_3.txt:This is the rhythm of the night
./inner_dir_1/tf_3.txt:He was turned to steel
./inner_dir_1/tf_3.txt:Pressure: pushing down on me
./inner_dir_1/tf_3.txt:the sec 2
./inner_dir_1/tf_3.txt:the SeCoNd 2
./inner_dir_1/tf_5.txt:string: 1
./inner_dir_1/tf_5.txt:string: 2
./inner_dir_1/tf_5.txt:string: 3
./inner_dir_1/tf_5.txt:string: 4
./inner_dir_1/tf_5.txt:string: 5
./inner_dir_1/tf_5.txt:string: 6
./inner_dir_1/tf_5.txt:string: 7
./inner_dir_1/tf_5.txt:string: 8
./inner_dir_1/tf_5.txt:string: 9
./inner_dir_1/tf_5.txt:string: 10
./inner_dir_1/tf_5.txt:string: 11
./inner_dir_1/tf_5.txt:string: 12
./inner_dir_1/tf_5.txt:string: 13
./tf_2.txt:the first 1
./tf_2.txt:the third 3
./tf_2.txt:the sec 3
./tf_2.txt:the seConD 2
```
### 32. Find only the names and paths of files that do not contain the combination "second":
To show only files without matches, we have to use the `-L`. Let's try it recursively:
```
$ grep -rL "second" ./*
```
Result:
```
./inner_dir_1/tf_4.txt
./inner_dir_1/tF_5.txt
./tf_1.txt
```
### 33. Display the last 4 lines of any text file in the terminal:
A simple `tail` command can be used here. We also use `-n` and type number of strings to be shown.
```
$ tail -n4 inner_dir_1/tf_3.txt
```
Result:
```
Pressure: pushing down on me
the second 2
the sec 2
the SeCoNd 2
```
### 34. Display the first 4 lines of any text file in the terminal:
Similar to `tail`, but here using `head` command:
```
$ head -n4 tf_2.txt
```
Result:
```
the first 1
the second 2
the third 3
the sec 3
```
### 35. One-line command. Create a folder and create a text file with content:
Here we can combine already known commands `mkdir` and `cat >` and use e.g. `&&` to connect these commands. `&&` means 'if the previous command executed successfully, execute the next command':
```
$ mkdir fol_35 && cat > tf_35.txt
My heart will go on                             # typing input string, then type Enter and Ctrl+D to save and quit
```
### 36. One-line command. Move all text files that contain the word "sec" in their content to any single folder.
The next one-line commands are executed using `xargs`, which reads items from input and passes them as arguments to a specified command.
Here. with `mv` command:
```
$ grep -rl "sec" ./ | xargs -I{} mv {} fol_35
```
### 37. One-line command. Copy all text files that contain the word "sec" in their content to any single folder.
Here, with `cp` command:
```
$ grep -rl "sec" ./ | xargs -I{} cp {} inner_dir_1
```

### 38. One-line command. Find all lines with "sec" in all text files, copy and paste these lines into one newly created text file.
Here, with `grep -rh` (where `-h` "cuts" the file names as we need only lines) and `>` operator.
```
$ grep -rh "sec" ./ | xargs -I{} echo {} > tf_38.txt
```
### 39. One-line command. Delete text files that contain the word "sec" in their content.
Combination of `grep -rl` and `rm -f` to remove files:
```
$ grep -rl "sec" ./ | xargs -I{} rm -f {}
```
### 40. Simply output the string "Good job!!" to the terminal.
`echo` command gives an opportunity to output any text:
```
$ echo "Good job!!"
```
Result:
```
Good job!!
```