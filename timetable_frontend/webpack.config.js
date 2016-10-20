module.exports = {
    entry: './src/index.js',
    // the place we ouput files
    output: {
        path: './dist',
        filename: 'index.js'
    },
    // module resolve
    resolve: {
        moduleDirectories: ['node_modules'],
        extensions: ['', '.js', '.elm']
    },
    module: {
        loaders:[
            {
                test: /\.html$/,
                exclude: /node_modules/,
                loader: 'file?name=[name].[ext]'
            },
            // We want to load our elm files with the `elm-webpack` loader
            // (but don't load our dependencies with it, or anything in node_modules)
            // We also want to chain in `elm-hot`
            {
                test: /\.elm$/,
                exclude: [/elm-stuff/, /node_modules/],
                loader: 'elm-hot!elm-webpack'
            }
        ],
        // no parse elm
        noParse: /\.elm$/
    },

    devServer: {
        inline: true,
        stats: 'errors-only'
    }
}