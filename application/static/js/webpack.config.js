//var webpack = require('webpack');
//var commonsPlugin = new webpack.optimize.CommonsChunkPlugin('common.js');

module.exports = {
    entry : {
        helloworld : "./helloworld.js"
    },
    output : {
        path : "./build",
        filename: '[name].js' // Template based on keys in entry above
    },
    //plugins: [commonsPlugin],
    module : {
        loaders : [
            {test:/\.js$/, loader:'jsx-loader'}
        ]
    }
}
