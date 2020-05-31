(use-package gruvbox-theme
    :init (load-theme 'gruvbox-dark-soft t))

(use-package smart-mode-line
    :init
    (setq sml/no-confirm-load-theme t)
    (setq sml/theme 'respectful)
    (sml/setup))


;;nyan-cat-mode
;;require https://github.com/TeMPOraL/nyan-mode
(add-to-list 'load-path "~/.emacs.d/nyan-mode")
(require 'nyan-mode)
(setq nyan-minimum-window-width 1)
(setq default-mode-line-format
      (list ""
            'mode-line-modified
            "<"
            "66RING"
            "> "
            "%10b"
            '(:eval (when nyan-mode (list (nyan-create))))
            " "
            'default-directory
            " "
            "%[("
            'mode-name
            'minor-mode-list
            "%n"
            'mode-line-process
            ")%]--"
            "Line %l--"
            '(-3 . "%P")
            "-%-"))
(nyan-mode t);;启动nyan-mode
;(nyan-start-animation);;开始舞动吧（会耗cpu资源）
;(setq-default nyan-wavy-trail t)






(provide 'init-ui)
