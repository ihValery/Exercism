// TODO: define the 'expectedMinutesInOven' constant
let expectedMinutesInOven: Int = 40
let timePerLayer: Int = 2

// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
  expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: Int) -> Int {
  layers * timePerLayer
}

// TODO: define the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
   preparationTimeInMinutes(layers: layers) + elapsedMinutes
}
