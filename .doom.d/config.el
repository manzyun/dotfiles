;;; .doom.d/config.el -*- lexical-binding: t; -*-

(setq mastodon-instance-url "https://qiitadon.com")

(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

(setq doom-theme 'doom-moonlight)
(setq doom-font(font-spec :family "Ubuntu Mono" :size 12)
      doom-unicode-font(font-spec :family "Noto Serif CJK JP")
      doom-big-font (font-spec :size 20))

; TODO: This under place codes for Windows, maybe.
;(setq doom-theme 'doom-moonlight)
;(setq doom-font(font-spec :family "JetBrains Mono" :size 12)
      ;doom-unicode-font(font-spec :family "Meiryo UI")
      ;doom-big-font (font-spec :size 20))

;; For private Org-mode documents directory
(setq my-org-directory "~/Dropbox/org/")
(setq my-org-agenda-directory "~/Dropbox/org/agenda/")
(setq org-agenda-files (list my-org-directory my-org-agenda-directory))

(use-package! ace-window
  :custom
  (setq aw-keys '(?a ?o ?e ?u ?h ?t ?n ?s))
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
