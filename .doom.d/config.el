;;; .doom.d/config.el -*- lexical-binding: t; -*-

(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
(setq default-input-method "japanese-skk")
(setq skk-byte-compile-init-file t)
(setq system-time-locale "C")
(display-time-mode t)
(setq display-time-24hr-format t)

;; DOOM Emacs face configration
(setq doom-theme 'doom-gruvbox)
(setq doom-font(font-spec :family "Ubuntu Mono" :size 16)
      doom-variable-pitch-font(font-spec :family "Ubuntu Mono")
      doom-serif-font(font-spec :family "Noto Serif CJK JP")
      doom-big-font(font-spec :size 32))

; TODO: This under place codes for Windows, maybe.
;(setq doom-theme 'doom-gruvbox)
;(setq doom-font(font-spec :family "JetBrains Mono" :size 12)
      ;doom-unicode-font(font-spec :family "Meiryo UI")
      ;doom-big-font (font-spec :size 20))


;; For private Org-mode documents directory
(setq org-directory "~/Dropbox/org")
(setq org-agenda-files (list "~/Dropbox/org/"
                             "~/Dropbox/org/Projects/"))


;; Org-refile configuration.
(setq org-refile-targets '((org-agenda-files :maxlevel . 3)))

;; Org-journal configuration
(setq org-journal-find-file "~/Dropbox/org/journal.org")
(setq org-journal-date-format "%Y-%m-%d, %A")
(setq org-journal-time-format "%R\n")

(use-package! org-roam
  :custom
  (org-roam-db-location "~/.emacs.d/org-roam.db"))
(use-package! websocket
    :after org-roam)

(use-package! org-roam-ui
    :after org-roam ;; or :after org
;;         normally we'd recommend hooking orui after org-roam, but since org-roam does not have
;;         a hookable mode anymore, you're advised to pick something yourself
;;         if you don't care about startup time, use
;;  :hook (after-init . org-roam-ui-mode)
    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
          org-roam-ui-open-on-start t))


;; Any modules configration
(custom-set-faces!
  '(aw-leading-char-face
    :height 4.0
    :foreground "#00ff00"))


; GDScript LSP settings
(setq gdscript-godot-executable "flatpak run org.godotengine.Godot")
(setq lsp-gdscript-port 6008)


; My DMZ about mental.
(setq mastodon-instance-url "https://qiitadon.com")


;; Not packages. It's just me functions.

;; Ref:: https://qiita.com/tadsan/items/13780e2546b69679d3f2
(require 'ov)
(defun just-me/buffer-cursiviliize-mikachan ()
  "Cursivilize current buffer of mikachan."
  (interactive)
  (ov (point-min) (point-max) 'face '(:family "mikachan-p")))
(defun just-me/buffer-cursiviliize-nagurip ()
  "Cursivilize current buffer of S2G Nagurigaki."
  (interactive)
  (ov (point-min) (point-max) 'face '(:family "S2G Nagurigaki font-PRO")))
