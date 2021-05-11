;;; .doom.d/config.el -*- lexical-binding: t; -*-
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
(setq default-input-method "japanese-skk")
(setq skk-byte-compile-init-file t)
(setq ispell-dictionary "english")
(setq system-time-locale "C")
(display-time-mode t)
(setq display-time-24hr-format t)
(defun skk-open-server-decoding-utf-8 ()
  "辞書サーバと接続する。サーバープロセスを返す。 decoding coding-system が euc ではなく utf8 となる。"
  (unless (skk-server-live-p)
    (setq skkserv-process (skk-open-server-1))
    (when (skk-server-live-p)
      (let ((code (cdr (assoc "euc" skk-coding-system-alist))))
	(set-process-coding-system skkserv-process 'utf-8 code))))
  skkserv-process)
(setq skk-mode-hook
      '(lambda()
         (advice-add 'skk-open-server :override 'skk-open-server-decoding-utf-8)))

;; DOOM Emacs face configration
(setq doom-theme 'doom-gruvbox)
(setq doom-font(font-spec :family "Ubuntu Mono" :size 16)
      doom-unicode-font(font-spec :family "Noto Serif CJK JP light"
                                  :size 16)
      doom-big-font (font-spec :size 24))

; TODO: This under place codes for Windows, maybe.
;(setq doom-theme 'doom-gruvbox)
;(setq doom-font(font-spec :family "JetBrains Mono" :size 12)
      ;doom-unicode-font(font-spec :family "Meiryo UI")
      ;doom-big-font (font-spec :size 20))


(centaur-tabs-mode t)
(setq centaur-tabs-style "bar")


;; For private Org-mode documents directory
(setq org-directory "~/Dropbox/org")
(setq org-agenda-files (list "~/Dropbox/org"
                             "~/Dropbox/org/Projects"
                             "~/Dropbox/org/Journal"))

;; TODO: If your job site changes, rewrite it for your convenience. Example:
;;(setq org-directory "~/Documents/org")
;;(setq org-agenda-files (list "~/Documents/org"
;;                             "~/Documents/org/projects"))
;; Of course. If you want use this config, Running =bootstrap.sh= on your want directory. 


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
(setq skk-show-mode-show t)
(setq skk-show-mode-style 'tooltip)
(setq aw-keys '(?a ?o ?e ?u ?h ?t ?n ?s))


;; Any modules configration
(custom-set-faces!
  '(aw-leading-char-face
    :height 4.0
    :foreground "#00ff00"))


(use-package! minimap
  :custom
  (minimap-window-location 'right)
  (minimap-update-delay 0.2)
  (minimap-minimum-width 20))


(setq mastodon-instance-url "https://qiitadon.com")
