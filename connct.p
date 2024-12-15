apiRoutes.get('/wormhole/clean', isAuthenticated, async (req, res) => {
    await wormholeClean()
    res.json(true)
})

// DEBRIDGE API
apiRoutes.get('/debridge', isAuthenticated, async (req, res) => {
    const responseData = await debridgeData()
    res.json(responseData)
})

apiRoutes.get('/debridge/refresh', isAuthenticated, async (req, res) => {
    const wallet = req.query.wallet ? req.query.wallet : ''
    await debridgeFetchWallet(wallet)
    res.json(true)
})

apiRoutes.get('/debridge/clean', isAuthenticated, async (req, res) => {
    await debridgeClean()
    res.json(true)
})

// LAYERZERO API
apiRoutes.get('/layerzero', isAuthenticated, async (req, res) => {
    const responseData = await layerzeroData()
    res.json(responseData)
})

apiRoutes.get('/layerzero/refresh', isAuthenticated, async (req, res) => {
    const wallet = req.query.wallet ? req.query.wallet : ''
    await layerzeroFetchWallet(wallet)
    res.json(true)
})

apiRoutes.get('/layerzero/clean', isAuthenticated, async (req, res) => {
    await layerzeroClean()
    res.json(true)
})

// ZKBRIDGE API
apiRoutes.get('/zkbridge', isAuthenticated, async (req, res) => {
    const responseData = await zkbridgeData()
    res.json(responseData)
})

apiRoutes.get('/zkbridge/refresh', isAuthenticated, async (req, res) => {
    const wallet = req.query.wallet ? req.query.wallet : ''
    await zkbridgeFetchWallet(wallet)
    res.json(true)
})

apiRoutes.get('/zkbridge/clean', isAuthenticated, async (req, res) => {
    await zkbridgeClean()
    res.json(true)
})

// HYPERLANE API
apiRoutes.get('/hyperlane', isAuthenticated, async (req, res) => {
    const responseData = await hyperlaneData()
    res.json(responseData)
})
