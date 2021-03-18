;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! nvm)
(package! toml-mode)
(package! nhexl-mode)
(package! graphviz-dot-mode)
(package! focus)
(package! lsp-focus)


(package! mastodon)
(package! discord-emacs :recipe
  (:host github
  :repo "nitros12/discord-emacs.el"))
(package! image-tooltip :recipe
  (:host nil
   :repo "https://gist.github.com/b403e7d0f6d7c459136099759c281b6a.git"))
