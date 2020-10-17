;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! toml-mode)
(package! nhexl-mode)
(package! protobuf-mode)
(package! graphviz-dot-mode)
(package! bazel-mode :recipe
  (:host github
   :repo "bazelbuild/emacs-bazel-mode"
   :files ("lisp/*.el")))


(package! mastodon)
(package! beacon)
(package! image-tooltip :recipe
  (:host nil
   :repo "https://gist.github.com/b403e7d0f6d7c459136099759c281b6a.git"))
