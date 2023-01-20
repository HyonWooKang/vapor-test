import Vapor
import Leaf

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.get { req -> EventLoopFuture<View> in
        return req.view.render("index")
    }
}
