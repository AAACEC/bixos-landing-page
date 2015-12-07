module.exports = {
	rules: {
		// Possible Errors
		'comma-dangle': [2, 'always-multiline'],
		'no-cond-assign': [2, 'except-parens'],
		'no-console': 2,
		'no-constant-condition': 2,
		'no-control-regex': 2,
		'no-debugger': 2,
		'no-dupe-args': 2,
		'no-dupe-keys': 2,
		'no-duplicate-case': 2,
		'no-empty-character-class': 2,
		'no-empty': 2,
		'no-ex-assign': 2,
		'no-extra-boolean-cast': 2,
		'no-extra-parens': [2, 'functions'],
		'no-extra-semi': 2,
		'no-func-assign': 2,
		'no-inner-declarations': [2, 'functions'],
		'no-invalid-regexp': 2,
		'no-irregular-whitespace': 2,
		'no-negated-in-lhs': 2,
		'no-obj-calls': 2,
		'no-regex-spaces': 2,
		'no-sparse-arrays': 2,
		'no-unexpected-multiline': 2,
		'no-unreachable': 2,
		'use-isnan': 2,
		'valid-typeof': 2,

		// Best Practices
		// TODO

		// Strict Mode
		'strict': [2, 'function'],

		// Variables
		// TODO

		// Node.js and CommonJS
		// TODO

		// Stylistic Issues
		// TODO

		// ECMAScript 6
		// TODO
	},

    env: {
        es6: true,
        browser: true,
    }
};