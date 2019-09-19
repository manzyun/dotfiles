;;; .doom.d/config.el -*- lexical-binding: t; -*-

(setq mastodon-instance-url "https://qiitadon.com")

(load (expand-file-name "~/.roswell/helper.el"))
(setq inferior-lisp-program `((ros ("ros" "run"))                       ; ros run の起動設定
        (sbcl ("~/.roswell/impls/x86-64/windows/sbcl-bin/1.4.14/bin/sbcl.exe"))))


(aw-keys '(?a ?o ?u ?e ?h ?t ?n ?s))
(aw-leading-char-face((t (:height 5.0 :foreground "#00ff00"))
(beacon-color "green")
(beacon-mode 1)
