;;; .doom.d/config.el -*- lexical-binding: t; -*-

(setq mastodon-instance-url "https://qiitadon.com")

(load (expand-file-name "~/.roswell/helper.el"))
(setq inferior-lisp-program `((ros ("ros" "run"))                       ; ros run の起動設定
        (sbcl ("~/.roswell/impls/x86-64/windows/sbcl-bin/1.4.14/bin/sbcl.exe"))))

(set-language-environment "Japanese")

(def-package! ace-window
  :custom
  (aw-keys '(?a ?o ?e ?u ?h ?t ?n ?s))
  :custom-face
  (aw-leading-char-face((t(:height 4.0 :foreground "#00ff00")))))

(def-package! beacon
  :custom
  (beacon-color "green")
  :config
  (beacon-mode 1))
