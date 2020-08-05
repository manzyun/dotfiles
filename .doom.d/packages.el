;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! nhexl-mode)

(package! exec-path-from-shell)
(package! mastodon)
(package! org-pomodoro)
(package! beacon)
(package! eshell-git-prompt)
(package! image-tooltip :recipe
  (:host nil :repo
         "https://gist.github.com/b403e7d0f6d7c459136099759c281b6a.git"))

(use-package! ace-window
  :custom
  (aw-keys '(?a ?o ?e ?u ?h ?t ?n ?s))
  :custom-face
  (aw-leading-char-face ((t (:height 4.0 :foreground "#00ff00")))))

(use-package! beacon
  :custom
  (beacon-color "green")
  :config
  (beacon-mode 1))

(use-package! minimap
  :custom
  (minimap-window-location 'right)
  (minimap-update-delay 0.2)
  (minimap-minimum-width 20))
