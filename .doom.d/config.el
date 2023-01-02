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
(after! flyspell
        (setq ispell-local-dictionary "en_US")
        (add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))


;; DOOM Emacs face configration
(setq doom-theme 'doom-Iosvkem)
(setq doom-font(font-spec :family "Ubuntu Mono" :size 16)
      doom-variable-pitch-font(font-spec :family "Ubuntu Mono")
      doom-unicode-font(font-spec :family "Noto Sans CJK JP")
      doom-serif-font(font-spec :family "Noto Serif CJK JP")
      doom-big-font(font-spec :family "Noto Sans CJK JP" :size 32))

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


;; Any modules configration
(custom-set-faces!
  '(aw-leading-char-face
    :height 4.0
    :foreground "#00ff00"))
(setq gdscript-godot-executable "/usr/bin/godot3") ;Default Godot execution.
