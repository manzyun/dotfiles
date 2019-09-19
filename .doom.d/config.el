;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq url-proxy-services '(("http" . "192.168.0.5:3128")
                           ("https" . "192.168.0.5:3128")))

(setq omnisharp-server-executable-path "C:/Users/Admin/.vscode/extensions/ms-vscode.csharp-1.21.2/.omnisharp/1.34.3-beta.23/OmniSharp.exe")

(setq magit-git-executable "C:/Program Files/Git/bin/git.exe")
(setq multi-term-program "c:/Program Files/Git/bin/bash.exe")

(setq mastodon-instance-url "https://qiitadon.com")

(load (expand-file-name "C:/Users/Admin/.roswell/helper.el"))
(setq inferior-lisp-program `((ros ("ros" "run"))                       ; ros run の起動設定
        (sbcl ("C:/Users/Admin/.roswell/impls/x86-64/windows/sbcl-bin/1.4.14/bin/sbcl.exe"))))


(aw-keys '(?a ?o ?u ?e ?h ?t ?n ?s))
(aw-leading-char-face((t ):height 5.0 :foreground "#00ff00"))
(beacon-color "green")
(beacon-mode 1)
