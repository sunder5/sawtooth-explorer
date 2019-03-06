const PROXY_CONFIG = [
    {
        context: [
            "/transactions/*",
            "/batches/*",
            "/blocks/*"
        ],
        target: "http://localhost:8008",
        secure: false,
        changeOrigin: true
    }
]

module.exports = PROXY_CONFIG;