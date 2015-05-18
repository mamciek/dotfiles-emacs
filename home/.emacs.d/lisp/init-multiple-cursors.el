(require-package 'multiple-cursors)

(global-set-key (kbd "C->") 'mc/mark-next-word-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-word-like-this)

(provide 'init-multiple-cursors)
