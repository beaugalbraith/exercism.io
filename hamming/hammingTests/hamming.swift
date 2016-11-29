struct Hamming {
  static func compute(strand: String?, against: String?) -> Int? {
    if (strand == nil || strand?.characters.count != against?.characters.count){
      return nil
    } else {
    var count = 0
    for i in strand!.startIndex..<strand!.endIndex {
      let x = strand!.characters[i]
      let y = against!.characters[i]
        if (x != y){
          count += 1
      }
    }
    return count
    }
  }
}