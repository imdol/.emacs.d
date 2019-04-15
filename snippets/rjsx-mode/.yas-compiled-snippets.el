;;; Compiled snippets and support files for `rjsx-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rjsx-mode
		     '(("scu" "shouldComponentUpdate: function(${1:nextProps}, ${2:nextState}) {\n  $0\n}\n" "shouldComponentUpdate" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.shouldComponentUpdate" nil nil)
		       ("ss" "this.setState({$0});\n" "setState" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.setState" nil nil)
		       ("sp" "this.setProps({$0});\n" "setProps" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.setProps" nil nil)
		       ("ren" "React.render(\n  $1,\n  $0\n);\n" "render" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.render" nil nil)
		       ("imrc" "import React, { Component } from 'react';$0" "importReactComponent" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.importReactComponent" nil nil)
		       ("gis" "getInitialState: function() {\n  $0\n}\n" "getInitialState" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.getInitialState" nil nil)
		       ("gdp" "getDefaultProps: function() {\n  $0\n}\n" "getDefaultProps" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.getDefaultProps" nil nil)
		       ("fc" "import React from 'react';\nimport PropTypes from 'prop-types';\n\nconst propTypes = {};\n\nconst defaultProps = {};\n\nconst ${1:Component} = (props) => {};\n\n${1:Component}.propTypes = propTypes;\n${1:Component}.defaultProps = defaultProps;\n\nexport default ${1:Component};\n" "functionComponent" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.functionComponent" nil nil)
		       ("cc" "class ${1:Component} extends Component {\n  state = {}\n  render() {\n    return (\n      $0\n    );\n  }\n};\n\nexport default ${1:Component};\n" "createClass" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.createClass" nil nil)
		       ("cwu" "componentWillUpdate: function(${1:nextProps}, ${2:nextState}) {\n  $0\n}\n" "componentWillUpdate" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.componentWillUpdate" nil nil)
		       ("cwum" "componentWillUnmount: function() {\n  $0\n}\n" "componentWillUnmount" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.componentWillUnmount" nil nil)
		       ("cwrp" "componentWillReceiveProps: function(${1:nextProps}) {\n  $0\n}\n" "componentWillReceiveProps" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.componentWillReceiveProps" nil nil)
		       ("cwm" "componentWillMount: function() {\n  $0\n}\n" "componentWillMount" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.componentWillMount" nil nil)
		       ("cdu" "componentDidUpdate: function(${1:prevProps}, ${2:prevState}, ${3:rootNode}) {\n  $0\n}\n" "componentDidUpdate" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.componentDidUpdate" nil nil)
		       ("cdm" "componentDidMount: function(${1:rootNode}) {\n  $0\n}\n" "componentDidMount" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.componentDidMount" nil nil)
		       ("rcc" "import React from 'react';\nimport PropTypes from 'prop-types';\n\nconst propTypes = {};\n\nconst defaultProps = {};\n\nclass ${1:Component} extends React.Component {\nconstructor(props) {\n  super(props);\n}\n\n  render() {\n    return (\n\n    );\n  }\n};\n\n${1:Component}.propTypes = propTypes;\n${1:Component}.defaultProps = defaultProps;\n\nexport default ${1:Component};" "classComponent" nil
			("react")
			nil "/home/slispe/.emacs.d/snippets/rjsx-mode/react.classComponent" nil nil)))


;;; Do not edit! File generated at Sun Apr 14 17:10:33 2019
