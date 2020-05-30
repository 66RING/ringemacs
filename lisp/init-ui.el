(use-package gruvbox-theme
    :init (load-theme 'gruvbox-dark-soft t))

(use-package smart-mode-line
    :init
    (setq sml/no-confirm-load-theme t)
    (setq sml/theme 'respectful)
    (sml/setup))





(provide 'init-ui)
