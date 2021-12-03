import UIKit

func hello(name: String = "World") -> String {
   "Hello, \(name)!"
}

hello()
hello(name: "Valery")

