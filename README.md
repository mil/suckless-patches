# Miles' Suckless Patches

Here's my collection of custom patches for various [Suckless](http://suckless.org/philosophy/) software. If you find bugs with any of these patches please drop me a note. These patches are hosted on the suckless site but also mirrored on my [repository here](http://github.com/mil/suckless-patches) as well for posterity.

**dmenu**

- [Dmenu highlight](https://tools.suckless.org/dmenu/patches/highlight): Show the individual characters of matched text in a different (highlighted) color.
- [Dmenu numbers](https://tools.suckless.org/dmenu/patches/numbers): Show the number of matched and total number of entries in the top right corner of dmenu.

**dwm**

- [Dwm bartabgroups](https://dwm.suckless.org/patches/bartabgroups): Show two seperate tab groups (based on nmaster) when tiling split at mfact location.
- [Dwm dragmfact](https://dwm.suckless.org/patches/dragmfact): Allows you to use the mouse to resize the mfact (split propotion) like in i3.
- [Dwm inplacerotate](https://dwm.suckless.org/patches/inplacerotate): Rotate all clients in the master or the stack.
- [Dwm transferall](https://dwm.suckless.org/patches/transfer/): Swap the master and the stack and adjust nmaster accordingly.
- [Dwm transfer](https://dwm.suckless.org/patches/transfer/): Transfer the currently focused client between the master & stack adjusting for nmaster accordingly.

**st**

- [St externalpipe-signal](https://st.suckless.org/patches/externalpipe-signal/): Allows utilizing an externalpipe command on the SIGUSR1 signal.

**surf**

- [Surf externalpipe](https://surf.suckless.org/patches/externalpipe/): Pipe current webpage source through external command on keypress. See [blog post]().
- [Surf externalpipe-signal](https://surf.suckless.org/patches/externalpipe-signal): Allows utilizing an externalpipe command on the SIGUSR1 signal.
