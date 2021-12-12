extension Collection {
   func accumulate<T>(_ function: (Element) -> T) -> [T] {
      var result: [T] = []
      for item in self {
         result.append(function(item))
      }
      return result
   }
}
