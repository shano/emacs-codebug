;;; codebug.el --- Interact with codebug

;; Copyright (C) 2014 Shane Dowling

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

;; Author: Shane Dowling
;; URL: http://www.shanedowling.com/
;; Version: 0.0.1

;;; Change Log:

;;; Code:

;; * constants

(defconst codebug-version "0.0.1")

(defun codebug ()
  "Run CodeBug"
  (interactive)
  (if (eq system-type 'darwin)
    (progn
     (setq linenumber (number-to-string (line-number-at-pos)))
     (setq filename (buffer-file-name))
    (setq command (concat "open 'codebug://send?file=" filename "&line=" linenumber "&op=add&open=1'"))
    (shell-command command)
    )
    (message "Sorry, OSX support only")
  )
)

;; * provide

(provide 'codebug)

;;; codebug.el ends here
