# macOS-handy-settings
Handy macOS settings can be quickly setup on new / existing systems.

Do you want to make your life easie when setting up your computer, then handy-settings-macOS is the tool for you.

Have you been setting up a new machine (from scratch / without an MDM) and thought. Wow it would be great to have a bunch 
of settings on the computer just how I like them? I had this thought and made the defaults.bash script which you can run
to set up your macOS system settings just as you like.

Perhaps you want to quickly install various software packages on a new computer. I have and that is the reason for the brew_setup.bash 
found in this repository, download edit to install just what you want and then run it to install the software you need on the 
system. Instead of visiting various websites, downloading many installers and running them, just use the brew_setup.bash script!

This script requires that you alreay have [brew installed on your system](https://brew.sh). If you are unfamailar with brew it is a [package manager](https://en.wikipedia.org/wiki/Package_manager) for macOS. Pacakge managers are sorftware tools to assist you with managing software tools (packages) and ther dependiences on a computer system.

It may be extended to cover additional settings in the future. Perhaps even a config file so you can quickly
set up a machine with some stuff which make sense to you personally rather than everything being in a single script.
It could even ask questions to find out what you want to install. 

For now you can fork a and edit your own copy so it is just how you like :)

There are many approaches to working out a defaults command. If you are particularly stuck, then [plistwatch](https://github.com/catilac/plistwatch) is a handy tool which is well worth a look.

If you have an awsome tooling, scripts, etc... which help you setup a macOS system or a software package which runs on macOS quickly and reliably feel free to open a pull request to share your ideas, links and more. If you have forked this script and then made it better then consider a pull request. Together, maybe we can make this system even better so it saves more people even more time. I would even settle to a file with information which may help people find out about various approaches to save system setup time and maintenance.
