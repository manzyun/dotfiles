;;; .doom.d/config.el -*- lexical-binding: t; -*-
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
(setq default-input-method "japanese-skk")
(setq skk-byte-compile-init-file t)
(setq system-time-locale "C")

;; DOOM Emacs face configration
(setq doom-theme 'doom-gruvbox)
(setq doom-font(font-spec :family "Ubuntu Mono" :size 12)
      doom-unicode-font(font-spec :family "Noto Serif CJK JP")
      doom-big-font (font-spec :size 20))

; TODO: This under place codes for Windows, maybe.
;(setq doom-theme 'doom-gruvbox)
;(setq doom-font(font-spec :family "JetBrains Mono" :size 12)
      ;doom-unicode-font(font-spec :family "Meiryo UI")
      ;doom-big-font (font-spec :size 20))


(centaur-tabs-mode t)
(setq centaur-tabs-style "bar")


;; For private Org-mode documents directory
(setq org-default-notes-file "notes.org")
(setq org-directory "~/Dropbox/org")
(setq org-agenda-files (list "~/Dropbox/org"
                             "~/Dropbox/org/Inbox"
                             "~/Dropbox/org/Plans"
                             "~/Dropbox/org/Agenda"
                             "~/Dropbox/org/Outbox"
                             "~/Dropbox/org/Projects"
                             "~/Dropbox/org/Reviews"
                             "~/Dropbox/org/Topics"
                             "~/Dropbox/org/Journal"
                             "~/Dropbox/org/Snippets"
                             "~/Dropbox/org/Archive"))

;; TODO: If your job site changes, rewrite it for your convenience. Example:
;;(setq org-directory "~/Documents/org")
;;(setq org-agenda-files (list "~/Documents/org"
;;                             "~/Documents/org/inbox"
;;                             "~/Documents/org/plans"
;;                             "~/Documents/org/agenda"
;;                             "~/Documents/org/outbox"
;;                             "~/Documents/org/projects"
;;                             "~/Documents/org/reviews"
;;                             "~/Documents/org/topics"
;;                             "~/Documents/org/journal"
;;                             "~/Documents/org/snippets"
;;                             "~/Documents/org/archive"))
;; Of course. If you want use this config, Running =bootstrap.sh= on your want directory. 

;; Org-capture-templates
(setq org-capture-templates
      '(("a" "Just 'Ah!', 'Aha!' and any ideas."
         entry (file nil)
         "#+TITLE: %?n #+DATE: $Un"
         )
        ("t" "Get and thinking todos. But, not set priority and judge of do."
         item (file "~/Dropbox/plans/daily.org")
         "* TODO %? $T"
         )))

;; Org-refile configration.
(setq org-refile-targets '((org-agenda-files :maxlevel . 3)))

;; Org-journal configuration
(setq org-journal-dir "~/Dropbox/org/Journal")
(setq org-journal-date-format "%Y-%m-%d, %A")
(setq org-journal-time-format "%R\n\n")
(setq org-journal-file-format "%Y-%m-%d.org")


;; NOTE: ~'(?a ?o ?e ?u ?i ?h ?t ?n ?s)~ and ~'(?a ?o ?e ?u ?h ?t ?n ?s)~
;;   Why this selection?
;;   I use Dvorak keyboard layout.
;;   But, I would not recommend this setup for beginners.
;;   Because this setting is a bit peaky.
(setq skk-henkan-show-candidate-keys '(?a ?o ?e ?u ?i ?h ?t ?n ?s))
(setq! aw-keys '(?a ?o ?e ?u ?h ?t ?n ?s))


;; Any modules configration
(custom-set-faces!
  '(aw-leading-char-face
    :height 4.0
    :foreground "#00ff00"))


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


(setq mastodon-instance-url "https://qiitadon.com")
