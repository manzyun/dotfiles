;;; .doom.d/config.el -*- lexical-binding: t; -*-

(setq mastodon-instance-url "https://qiitadon.com")

(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
(setq default-input-method "japanese-skk")
(setq system-time-locale "C")

(setq doom-theme 'doom-gruvbox)
(setq doom-font(font-spec :family "Ubuntu Mono" :size 12)
      doom-unicode-font(font-spec :family "Noto Serif CJK JP")
      doom-big-font (font-spec :size 20))

(centaur-tabs-mode t)
(setq centaur-tabs-style "bar")

; TODO: This under place codes for Windows, maybe.
;(setq doom-theme 'doom-gruvbox)
;(setq doom-font(font-spec :family "JetBrains Mono" :size 12)
      ;doom-unicode-font(font-spec :family "Meiryo UI")
      ;doom-big-font (font-spec :size 20))

;; For private Org-mode documents directory
;; TODO: If your job site changes, rewrite it for your convenience. Example:
;; (setq org-agenda-files (f-glob "~/Documents/org/*/*.org"))
(setq org-agenda-files (f-glob "~/Dropbox/org/*/*.org"))

;(defvar skk-henkan-show-candidate-keys (?a ?o ?e ?u ?i ?h ?t ?n ?s)
;; FIXME: If not attachment this defvar, Please upper code in Emacs's eval.

(use-package! ace-window
  :custom
  (aw-keys '(?a ?o ?e ?u ?h ?t ?n ?s))
  ;; FIXME: If not attachment this :custom, Please ~(setq aw-keys '(?a ?o ?e ?u ?h ?t ?n ?s))~ in Emacs's eval.
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
