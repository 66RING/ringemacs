;; 最简洁的格式
(use-package restart-emacs)


;; 常用的格式
(use-package smooth-scrolling   :ensure t ;是否一定要确保已安装
    :defer nil ;是否要延迟加载
    :init (setq smooth-scrolling-margin 2) ;初始化参数
    :config (smooth-scrolling-mode t) ;基本配置参数
    :bind) ;快捷键的绑定


;;start time
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))


;;Complete anything
(use-package company
  :config
  (setq company-dabbrev-code-everywhere t
        company-dabbrev-code-modes t
        company-dabbrev-code-other-buffers 'all
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case t
        company-dabbrev-other-buffers 'all
        company-require-match nil
        company-minimum-prefix-length 2
        company-show-numbers t
        company-tooltip-limit 20
        company-idle-delay 0
        company-echo-delay 0
        company-tooltip-offset-display 'scrollbar
        company-begin-commands '(self-insert-command))
  (push '(company-semantic :with company-yasnippet) company-backends)
  :hook ((after-init . global-company-mode)))


;;spelt chech
;;global 
(use-package flycheck
  :hook (after-init . global-flycheck-mode))
;;specify 
;;(use-package flycheck
;;  :hook (prog-mode . flycheck-mode))






(provide 'init-package)
