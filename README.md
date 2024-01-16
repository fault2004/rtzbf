# rtzbf
Running Though Zero Byte Files, the esolang. the Proof of Concept.

No Standard. Made in AutoIT, so Micro$hit Windows only...

Why?
---

Because I can't learn assembly language properly (skill issue) and end up creating my own shite language that not even close to assembly, but came with interesting idea.

How?
---

It reads code from filename, file by file.

The file is not even need to contain any data in it, only filename is enough.

Also, I can't code and do math properly, even the problem I can't fix it.

How it look like?
---

```
folder named JumpDemo (program folder, inside containing code)
 |_____ file named 0001,inv,str1,Hello World!,
 |_____ file named 0002,,,,
 |_____ file named 0003,coe,str1,str1,A
 |_____ file named 0004,prt,str1,,
 |_____ file named 0005,jmp,2,A,
 |_____ file named 0006,,,,
executable named rtzbf.exe (the interpreter itself)
```

running ``rtzbf.exe JumpDemo`` will print ``Hello World!`` in loop.

(I guess you will understand if you download the example zip from release)

(recommended to read the source code while reading example programs)

Instructions
---

this esolang also have flags, there are A and B flags.

(Warning: I sucks at explaining.)

### Utility instructions

| Instruction | Description                                            | Example                                                 |
| ----------- | -----------                                            | -------                                                 |
| inv         | Create/Update variable                                 | 0000,inv,\<name of variable>,\<string>,                 |
| prt         | Print variable string to console                       | 0000,prt,\<name of variable>,,                          |
| fee         | Freeze/Pause with required amount of time              | 0000,fee,\<time in milliseconds>,,                      |
| rad         | Read input though pipe (Create new variable)           | 0000,rad,\<name of variable>,,                          |
| jmp         | Jump to position when required A/B flag is 1           | 0000,jmp,\<position>,\<A/B>,                            |
| coe         | Compare two variables If EQUAL then set 1 to A/B flag  | 0000,coe,\<name of variable>,\<name of variable>,\<A/B> |

### Math instructions

| Instruction | Description                                            | Example                                                                  |
| ----------- | -----------                                            | -------                                                                  |
| mad         | Addition (Create new variable)                         | 0000,mad,\<name of variable>,\<name of variable>,\<name of new variable> |
| mst         | Subtraction (Create new variable)                      | 0000,mst,\<name of variable>,\<name of variable>,\<name of new variable> |
| mdi         | Division (Create new variable)                         | 0000,mdi,\<name of variable>,\<name of variable>,\<name of new variable> |
| mmu         | Multiplication (Create new variable)                   | 0000,mmu,\<name of variable>,\<name of variable>,\<name of new variable> |

What is not working?
---

The ``CompareEDemo`` program in the example zip is not working and I can't even fix it.

It suppose to freeze the entire program when str1 and str2 are equal.

If someone is able to fix, clone or improve it.

Thank you. (I don't know what to say)

Are you serious?
---

No, I'm completely made out of satire.

I have fun while coding it, so at least I have fun.

License
---

Under WTFPL License, read LICENSE file for more information.
