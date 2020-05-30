(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(electric-indent-mode -1)
(setq inhibit-splash-screen t)
(set-default-font "dejavu sans mono nerd font-25")


;;line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)


;;using f2 to open init file 
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-my-init-file)


;;set encodeing
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;;set gc(garbage collection)
(setq gc-cons-threshold most-positive-fixnum)


;;alias y=yes/n=no
(defalias 'yes-or-no-p 'y-or-n-p)









(provide 'init-startup)
