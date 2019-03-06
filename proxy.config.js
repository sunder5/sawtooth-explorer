const PROXY_CONFIG = [
    {
        context: [
            "/transactions/*",
            "/batches/*",
            "/blocks/*"
        ],
        target: "http://54.208.83.95:8008",
        secure: false,
        changeOrigin: true
    }
]

module.exports = PROXY_CONFIG;
