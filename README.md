ppict-slide-grid
----------------

This package provides a function that sets up a grid on
[ppict](www.cs.utah.edu/plt/snapshots/current/doc/unstable-gui/ppict.html)-based
slides that can be handy for judging the coordinates to use for
placing slide elements.

Screenshot:
  ![Example](screenshot.png)

To use, just put the following at the top of your slideshow:

    (require ppict-slide-grid)
    (set-grid-base-pict!)

Make sure to disable it for your actual talk!
