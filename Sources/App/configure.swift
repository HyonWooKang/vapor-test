import Vapor
import Leaf
// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
     

        
    // 파일 저장/불러올 위치
    app.directory.publicDirectory = "/Users/engis_spencer/Documents/Practice/Vapor/hello/Public"
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    // leaf 등록
    app.views.use(.leaf)
    app.leaf.cache.isEnabled = app.environment.isRelease
    // 경로 설정
    app.leaf.configuration.rootDirectory = "/Users/engis_spencer/Documents/Practice/Vapor/hello/Sources/Resources/Views"
    
    // register routes
    try routes(app)
}
