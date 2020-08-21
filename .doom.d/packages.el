;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! nhexl-mode)

(package! mastodon)
(package! beacon)
(package! eshell-git-prompt)
(package! image-tooltip :recipe
  (:host nil :repo
         "https://gist.github.com/b403e7d0f6d7c459136099759c281b6a.git"))
(package! imenu-list)
