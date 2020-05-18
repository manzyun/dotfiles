;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! godot-gdscript.el :recipe (:host github :repo "francogarcia/godot-gdscript.el"))
(package! company-godot-gdscript :recipe (:host github :repo "francogarcia/company-godot-gdscript.el"))
(package! yasnippet-godot-gdscript :recipe (:host github :repo "francogarcia/yasnippet-godot-gdscript"))

(package! mastodon)
(package! org-pomodoro)
(package! beacon)
(package! minimap)

(package! eshell-git-prompt)
(package! image-tooltip :recipe
  (:host nil :repo
         "https://gist.github.com/b403e7d0f6d7c459136099759c281b6a.git"))
