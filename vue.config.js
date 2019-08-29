module.exports = {
  devServer: {
      proxy: {
          '/api': {
              target: 'http://localhost:8023/',
              changeOrigin: true,
              ws: true,
              pathRewrite: {
                '^/api': ''
              }
          }
      }
  }
}
