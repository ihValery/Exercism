import UIKit

struct Size {
   var width: Int = 80
   var height: Int = 60
   
   mutating func resize(newWidth: Int, newHeight: Int) {
      width = newWidth
      height = newHeight
   }
}

let size1080x764 = Size(width: 1080, height: 764)
// => Size
var size1200x800 = size1080x764
// => Size
size1200x800.height
size1200x800.resize(newWidth: 1200, newHeight: 800)
size1200x800.height
size1080x764.height
// => 800

struct Position {
   var x: Int = 0
   var y: Int = 0
   
//   mutating func moveTo(newX: Int, newY: Int) {
//      x = newX
//      y = newY
//   }
}

var point = Position(x: 10, y: 20)
// => Position
//point.moveTo(newX: 100, newY: -100)
point.y
// => -100

class Window {
   var title: String = "New Window"
   var screenSize = Size(width: 800, height: 600)
   var size = Size()
   var position = Position()
   var contents: String?
   
   func resize(to size: Size) {
      let width = max(1, min(screenSize.width - position.x, size.width))
      let height = max(1, min(screenSize.height - position.y, size.height))
      
      self.size.resize(newWidth: width, newHeight: height)
   }
   
   func move(to position: Position) {
      self.position.x = max(0, min(screenSize.width - size.width, position.x))
      self.position.y = max(0, min(screenSize.height - size.height, position.y))
//
//      let x = max(0, min(screenSize.width - size.width, position.x))
//      let y = max(0, min(screenSize.height - size.height, position.y))
//
//      self.position.moveTo(newX: x, newY: y)
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
print("mainWindow - \(mainWindow.size)")
print("mainWindow - \(mainWindow.position)")

var copyMainWindow = mainWindow
copyMainWindow.move(to: Position(x: 111, y: 111))
copyMainWindow.resize(to: Size(width: 444, height: 333))

print("copyMainWindow - \(copyMainWindow.size)")
print("copyMainWindow - \(copyMainWindow.position)")
