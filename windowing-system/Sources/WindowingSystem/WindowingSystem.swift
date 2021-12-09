struct Size {
   var width: Int = 80
   var height: Int = 60
   
   mutating func resize(newWidth: Int, newHeight: Int) {
      width = newWidth
      height = newHeight
   }
}

struct Position {
   var x: Int = 0
   var y: Int = 0
   
   mutating func moveTo(newX: Int, newY: Int) {
      x = newX
      y = newY
   }
}

class Window {
   var title: String = "New Window"
   var screenSize: Size = .init(width: 800, height: 600)
   var size: Size = .init()
   var position: Position = .init()
   var contents: String?
   
   func resize(to size: Size) {
      self.size.width = min(screenSize.width - position.x, max(1, size.width))
      self.size.height = min(screenSize.height - position.y, max(1, size.height))
   }
   
   func move(to: Position) {
      let x = min(screenSize.width - size.width, max(0, position.x))
      let y = min(screenSize.height - size.height, max(0, position.y))
      
      position.moveTo(newX: x, newY: y)
   }
   
   func update(title: String) {
      self.title = title
   }
   
   func update(text: String?) {
      contents = text
   }
   
   func display() -> String {
      let lastLine = contents ?? "[This window intentionally left blank]"
      return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(lastLine)\n"
   }
}

var mainWindow: Window {
   let window = Window()
   window.update(title: "Main Window")
   window.resize(to: Size(width: 400, height: 300))
   window.move(to: Position(x: 100, y: 100))
   window.update(text: "This is the main window")
   return window
}
