;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! toml-mode)
(package! focus)
(package! lsp-focus)
(package! ov)


(package! mastodon)
(package! elcord)
(package! image-tooltip :recipe
  (:host nil
   :repo "https://gist.github.com/b403e7d0f6d7c459136099759c281b6a.git"))

