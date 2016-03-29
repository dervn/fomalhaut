var React = require('react');
var ReactDom = require('react-dom');

var HelloWorld = require('./components/HelloWorld');

ReactDom.render(<HelloWorld/>, document.getElementById("helloworld-container"));
