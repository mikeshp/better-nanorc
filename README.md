# Better Nanorc

**Custom nanorc configuration files for that pretty syntax highlighting in Nano.**<br>

These files were gathered from various sources across the Internet.<br>
Some were later modified to my own liking, some rewritten entirely from scratch.
<br>

---
## Core Principles
* **16 standard color names**: potentially compatible with any terminal color scheme.
* **Green theme focus**: optimized for the "Green on Black" profile that I use most.
* **Avoid "fruit salad" effect**: kept minimal to only highlight what is necessary.
* **Easy to customize**: clearly structured to toggle features on/off via comments.
## Additional Notes
* **Hard Tabs**: use the default 8 characters width hard tabs for indentation.
* **WebDev**: change tab width for webdev languages via Bash alias (not included here).
* **Dark themes**: prioritize white-on-black profiles, may get incompatible for black-on-white.
* **Updates**: update the languages I mostly use right now: C, Pascal, Bash, PHP, HTML, CSS.
* **Future updates**: expect sometime later: Ruby, Perl, Python, Go, Crystal, JavaScript, Lua.
* **Linux distro compatibility**: reflect my hopping between Debian, Arch, and derivatives.
* **WiP**: this project is constantly work in progress and updates according to my workflow.
---
## Installation
* For **global Nano theme** run:<br>
`sudo cp distro/distro.nanorc /etc/nanorc`<br>
* For **language syntax highlighting** run:<br>
`sudo mkdir -p /usr/share/nano/extra`<br>
`sudo cp extra/language.nanorc /usr/share/nano/extra`<br>
* If **nano-syntax-highlighting** package is installed (Arch and derivatives),<br>
make sure **extra** is included *after* it in **etc/nanorc** to override it:<br>
`include "/usr/share/nano-syntax-highlighting/*.nanorc"`<br>
`include "/usr/share/nano/extra/*.nanorc"`<br>
Otherwise, comment out the corresponding line.
---
## Known issues
* **C.nanorc**: a dot in float with no preceding digits such as `.42` will not highlight itself as part of the number, but follow punctuation rule.
* **C.nanorc**: a line break \ in the middle of a string literal will break the literal's highlighting from the new line.
* **Makefile.nanorc**: brackets () inside other brackets () will break the rule to clear colors for the outer brackets.
* **SH.nanorc**: infact is now including lots of Bash stuff, which must be separated into dedicated bash.nanorc.
---
## License
Distributed under the **MIT License**, see [LICENSE](LICENSE) for more details.
