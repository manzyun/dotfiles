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
(setq doom-theme 'doom-gruvbox)
(setq doom-font(font-spec :family "Ubuntu Mono" :size 16)
      doom-variable-pitch-font(font-spec :family "Ubuntu Mono")
      doom-unicode-font(font-spec :family "Noto Serif CJK JP")
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


;; Any modules configration
(custom-set-faces!
  '(aw-leading-char-face
    :height 4.0
    :foreground "#00ff00"))


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
(defun just-me/buffer-serif-hanazono ()
  "Cursivilize current buffer of mikachan."
  (interactive)
  (ov (point-min) (point-max) 'face '(:family "HanaMinA")))
(defun just-me/buffer-sans-hanazono ()
  "Cursivilize current buffer of mikachan."
  (interactive)
  (ov (point-min) (point-max) 'face '(:family "Ume P Gothic")))
