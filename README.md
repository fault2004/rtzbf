# rtzbf
Running Though Zero Byte Files, the esolang. the Proof of Concept.

Made in AutoIT.

Why?
---

Because I can't learn assembly language properly (skill issue) and end up creating my own shite language that not even close to assembly, but came with interesting idea.

How?
---

It reads code from filename, file by file. (files as lines)

The file is not even need to contain any data in it, only filename is enough.

Also, I can't code and do math properly. T_T

How it look like?
---

```
folder named Hello, World! (program folder, inside containing code which are files)
 |----> file named 0001•inv•str1•Hello, World!
 |----> file named 0002•
 |----> file named 0003•coe•str1•str1•A
 |----> file named 0004•out•str1
 |----> file named 0005•jmp•2•A
executable named rtzbf.exe (the interpreter itself)
```

running ``rtzbf.exe "Hello, World!"`` will print ``Hello, World!`` inside loop.

Delimiter is ``•`` (Press ALT + 7 on numpad) <br>
Filename Legend: ``<line_number>•<instruction>•<parameter_1>•<parameter_2>•<parameter_3>•<parameter_4>``

* Sort files by line numbers.
* Currently maximum parameter is 4.
* You can create comment like ``0001•This is comment.`` or just blank with line number ``0001•``.

More examples... (available in release zip file)
---

#### Your Name

```
0001•rad•name
0002•inv•str1•Hello, your name is AA and my name is Oak.•'
0003•rep•str1•AA•name•str1
0004•out•str1
```

#### 99 bottles of beer

```
0001•inv•blank•
0002•inv•bottle1•AA bottles of beer on the wall,
0003•inv•bottle2•AA bottles of beer on the wall.•
0004•inv•bottle3•AA bottles of beer.•
0005•inv•bottle4•1 bottle of beer on the wall,
0006•inv•bottle5•1 bottle of beer on the wall.•
0007•inv•bottle6•1 bottle of beer.•
0008•inv•nobottle•No bottles of beer on the wall.•
0009•inv•takedown•Take one down, pass it around,
0010•inv•amount•99
0011•inv•sub•1
0012•
0013•coe•sub•sub•A
0014•rep•bottle1•AA•amount•ret1
0015•rep•bottle3•AA•amount•ret2
0016•out•ret1
0017•out•ret2
0018•out•takedown
0019•mst•amount•sub•amount
0020•coe•amount•sub•B
0021•jmp•27•B
0022•rep•bottle2•AA•amount•ret3
0023•out•ret3
0024•out•blank
0025•fee•100
0026•jmp•12•A
0027•
0028•out•bottle5
0029•out•blank
0030•out•bottle4
0031•out•bottle6
0032•out•takedown
0033•out•nobottle
```

#### Truth-machine

```
0001•rad•input
0002•inv•true•1
0003•inv•false•0
0004•coe•input•true•A
0005•jmp•8•A
0006•out•false
0007•rip
0008•
0009•out•true
0010•jmp•8•A
```

Instructions
---

this esolang also have flags, there are A and B flags.

(Warning: I sucks at explaining.)

### Utility instructions

| Instruction | Description                                                                         | Example                                                                           |
| ----------- | -----------                                                                         | -------                                                                           |
| inv         | Create/Update variable <br>(always be string no int or boolean)                     | 0001•inv•\<name of variable>•\<string>                                            |
| out         | Print variable string to console                                                    | 0001•out•\<name of variable>                                                      |
| rep         | Replace substring in a string variable <br>(Create new or update existing variable) | 0001•rep•\<name of variable>•\<substring>•\<name of variable>•\<name of variable> |
| fee         | Freeze/Pause with required amount of time                                           | 0001•fee•\<time in milliseconds>                                                  |
| rad         | Read input though pipe <br>(Create new or update existing variable)                 | 0001•rad•\<name of variable>                                                      |
| coe         | Compare two variables If EQUAL then set 1 to A/B flag                               | 0001•coe•\<name of variable>•\<name of variable>•\<A/B>                           |
| jmp         | Jump to position when required A/B flag is 1                                        | 0001•jmp•\<position>•\<A/B>                                                       |
| set         | Reset status of A/B flags to 0                                                      | 0001•set•\<A/B>                                                                   |
| rip         | Terminate program                                                                   | 0001•rip                                                                          |

* For inv instruction: if string end with '.' must add '•'
* This is how you 'pipe' input: ``echo <input>| rtzbf.exe <program name/folder>``

### Math instructions

| Instruction | Description                                                               | Example                                                                  |
| ----------- | -----------                                                               | -------                                                                  |
| mad         | Addition <br>(Create new or update existing variable)                     | 0001•mad•\<name of variable>•\<name of variable>•\<name of new variable> |
| mst         | Subtraction <br>(Create new or update existing variable)                  | 0001•mst•\<name of variable>•\<name of variable>•\<name of new variable> |
| mdi         | Division <br>(Create new or update existing variable)                     | 0001•mdi•\<name of variable>•\<name of variable>•\<name of new variable> |
| mmu         | Multiplication <br>(Create new or update existing variable)               | 0001•mmu•\<name of variable>•\<name of variable>•\<name of new variable> |

* String must be numbers.

Are you serious?
---

No, I'm completely made out of satire.

I have fun while coding it, so at least I have fun.

License
---

Under WTFPL License, read LICENSE file for more information.
