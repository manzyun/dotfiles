;;; .doom.d/config.el -*- lexical-binding: t; -*-

(setq mastodon-instance-url "https://qiitadon.com")

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

(eshell-git-prompt-use-theme 'git-radar)
