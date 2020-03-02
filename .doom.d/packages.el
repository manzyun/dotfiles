;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! evil-little-word :recipe (:fetcher github :repo "tarao/evil-plugins"))
(package! mastodon)
(package! org-pomodoro)
(package! beacon)
(package! eshell-git-prompt)
