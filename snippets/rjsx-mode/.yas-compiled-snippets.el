;;; Compiled snippets and support files for `rjsx-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rjsx-mode
		     '(("rpu" "router.put('$1', $0);" "router.put" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/router.put" nil nil)
		       ("rpo" "router.post('$1', $0);" "router.post" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/router.post" nil nil)
		       ("rge" "router.get('$1', $0);" "router.get" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/router.get" nil nil)
		       ("rde" "router.delete('$1', $0);" "router.delete" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/router.delete" nil nil)
		       ("res" "res.send($0);" "res.send" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/res.send" nil nil)
		       ("rr" "(req, res) => {\n    $0\n}" "req.res" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/req.res" nil nil)
		       ("mex" "module.exports$1 = $0;" "module export" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/mod.export" nil nil)
		       ("lr" "let ${1:module} = require('$2');\n$0 " "let require" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/let-require" nil nil)
		       ("init" "initialize: function($1) {\n  $0\n}" "Constructor" nil nil nil "/home/imdol/.config/emacs/snippets/rjsx-mode/init" nil nil)
		       ("ifs" "if (${1:condition}) $0" "if.short" nil nil nil "/home/imdol/.config/emacs/snippets/rjsx-mode/if-short" nil nil)
		       ("forl" "for (let ${1:i} = ${2:0}; $1 < ${3:collection}.length; $1++) {\n  $0\n}" "forlet" nil
			("es6")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/forlet" nil nil)
		       ("ccs" "constructor(${1:arg}) {\n  ${2:super(${3:arg});}\n  $0\n}" "constructor" nil
			("es6")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/constructor" nil nil)
		       ("cr" "const ${1:module} = require('$0');" "const require" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/const-require" nil nil)
		       ("cle" "class ${1:Class} extends ${2:ParentClass} {\n  ${3:constructor(${4:arg}) {\n    ${5:super(${6:arg})}\n    ${7:props}\n  }}\n\n  ${0:methods}\n}" "class-extends" nil
			("es6")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/class-extends" nil nil)
		       ("cls" "class ${1:Name} {\n  ${4:constructor(${5:arg}) {\n    $6\n  }}\n  \n  $0\n}" "class" nil
			("es6")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/class" nil nil)
		       ("aw" "await $0" "await" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/await" nil nil)
		       ("rra" "async (req, res) => {\n    $0\n}" "async-req.res" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/async.req.res" nil nil)
		       ("fa" "async function ${1:name}(${2:arg}) {\n         $0\n}" "async function" nil
			("node")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/async-function" nil nil)
		       ("as" "${1:arg} => $0" "arrow function short" nil
			("es6")
			nil "/home/imdol/.config/emacs/snippets/rjsx-mode/arrow-function-short" nil nil)))


;;; Do not edit! File generated at Tue Sep  8 00:51:24 2020
