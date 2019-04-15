;;; Compiled snippets and support files for `web-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'web-mode
		     '(("spancl" "<span class=\"$1\"$2>$3</span>\n" "span-class" nil nil nil "/home/slispe/.emacs.d/snippets/web-mode/spancl" nil nil)
		       ("span" "<span>$1</span>\n" "span" nil nil nil "/home/slispe/.emacs.d/snippets/web-mode/span" nil nil)
		       ("htmlstart" "<!DOCTYPE HTML>\n<html>\n<head>\n	<meta charset = \"UTF-8\">\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n	<title>${1:titlename}</title>\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"$2\">\n</head>\n	<body>\n	$4\n	</body>\n\n	<footer>\n	</footer>\n	<script src=\"$3\"></script>\n</html>\n" "html-start" nil nil nil "/home/slispe/.emacs.d/snippets/web-mode/htmlstart" nil nil)
		       ("divcl" "<div class=\"$1\"$2>$3</div>" "div-class" nil nil nil "/home/slispe/.emacs.d/snippets/web-mode/divcl" nil nil)
		       ("div" "<div>$1</div>" "div" nil nil nil "/home/slispe/.emacs.d/snippets/web-mode/div" nil nil)))


;;; Do not edit! File generated at Sun Apr 14 17:10:33 2019
