//struct Hamming {
//  static func compute(_ strand: String?, against: String?) -> Int? {
//    //guard strand != nil, against != nil, strand?.characters.count == against?.characters.count else { return nil }
//    guard let strand = strand else { return nil }
//    guard let against = against else { return nil }
//    
//    var count = 0
//    
//    for strandCharacter in strand.characters {
//      let strandIndex = strand.characters.index(of: strandCharacter)
//      for againstCharacter in against.characters {
//        let againstIndex = against.characters.index(of: againstCharacter)
//        if strandIndex == againstIndex && strandCharacter != againstCharacter {
//          count += 1
//        }
//      }
//    }
//    return count
//  }
//}

class Hamming {
  class func compute(_ strand: String?, against: String?) -> Int? {
    //guard strand != nil, against != nil, strand?.characters.count == against?.characters.count else { return nil }
    guard let strand = strand else { return nil }
    guard let against = against else { return nil }
    
    var count = 0
 
    for strandCharacter in strand.characters {
      print("##STRANDCHARACTER: \(strandCharacter)")
      let strandIndex = strand.characters.index(of: strandCharacter)
      print("##STRANDINDEX: \(strandIndex!)")
      for againstCharacter in against.characters {
        print("##$$AGAINSTCHARACTER: \(againstCharacter)")
        let againstIndex = against.characters.index(of: againstCharacter)
        print("##$$AGAINSTINDEX: \(againstIndex!)")
        if strandIndex == againstIndex {
          if strandCharacter != againstCharacter {
            print("##^^ Count before: \(count)")
            count += 1
          } else {
            
          }
        } else {
          continue
        }
      }
    }
    return count
    }
}
