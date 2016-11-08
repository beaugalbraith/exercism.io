import Foundation
/// # https://oleb.net/blog/2016/08/swift-3-strings/
extension String {
  func words(with charset: CharacterSet = .alphanumerics) -> [String] {
    return self.unicodeScalars.split {
      !charset.contains($0)
      }.map(String.init)
  }
}
/** ### with extension

class WordCount : NSObject {
  var wordDictionary: [String: Int] = [:]
  init(words: String) {
    let lettersAndNumbers = words.words()
    print(lettersAndNumbers)
    //let wordArray = words.components(separatedBy: CharacterSet.whitespacesAndNewlines)
    
    for var word in lettersAndNumbers {
      word = word.lowercased()
      if wordDictionary[word] != nil {
        wordDictionary[word] = wordDictionary[word]! + 1
      } else {
        wordDictionary[word] = 1
      }
    }
  }
  
  func count() -> [String: Int] {
    return wordDictionary
  }
}
**/

/** ### with function
class WordCount : NSObject {
  var wordDictionary: [String: Int] = [:]
  func words(from: String) -> [String] {
    let charset: CharacterSet = .alphanumerics
    return from.unicodeScalars.split {
      !charset.contains($0)
      }.map(String.init)
  }
  init(words: String) {
    super.init()
    let lettersAndNumbers = self.words(from: words)
    for var word in lettersAndNumbers {
      word = word.lowercased()
      if wordDictionary[word] != nil { wordDictionary[word] = wordDictionary[word]! + 1 }
      else { wordDictionary[word] = 1 }
    }
  }
  func count() -> [String: Int] {
    return wordDictionary
  }
}
**/

/// ### with closure
class WordCount : NSObject {
  var wordDictionary: [String: Int] = [:]
  /// ### with closure
  let wordsClosure: (String) -> [String] = { $0.unicodeScalars.split { !CharacterSet.alphanumerics.contains($0) }.map(String.init) }
  init(words: String) {
    super.init()
    let lettersAndNumbers = wordsClosure(words)
    for var word in lettersAndNumbers {
      word = word.lowercased()
      if wordDictionary[word] != nil { wordDictionary[word] = wordDictionary[word]! + 1 }
      else { wordDictionary[word] = 1 }
    }
  }
  func count() -> [String: Int] {
    return wordDictionary
  }
}
