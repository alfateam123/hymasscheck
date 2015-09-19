hymasscheck
============

check the CRC32 of your chinese cartoons.

run it!
-------

```sh
# virtualenv $VIRTUALENVS_FOLDER/hy
# virtualenv_activate hy
make FOLDERPATH="/path/to/your/chinese/cartoons"
```

y u no proper packaging?
------------------------

/cares. will do if I need it.

b-but all these... parentheses!
-------------------------------

it's written in Hylang, a lisp-like language that compiles to Python.
You can't say bad things about things you didn't try, so I tried it.
Probably I'll write a blog post about it.

why does the makefile executes the converted script?
----------------------------------------------------

atm, Python tracebacks >>> Hylang tracebacks.
