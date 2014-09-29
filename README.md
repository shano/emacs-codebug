emacs-codebug
=============

Emacs plugin for interaction with Codebug(http://codebugapp.com)

Usage
=====

Require this script in your ~/.emacs file

    (require 'codebug)

Then navigate to the breakpoint line you wish to set and activate with `M-x codebug` 


Customization
============

To set up a shortcut for example C-c b add this to your .emacs

    (global-set-key (kbd "C-c b") 'codebug)
