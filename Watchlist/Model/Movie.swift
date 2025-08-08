
import Foundation
import SwiftData

@Model
class Movie {
  var title: String
  var genre: Genre
  
  init(title: String, genre: Genre) {
    self.title = title
    self.genre = genre
  }
}

extension Movie{
  @MainActor
  static var preview: ModelContainer{
    let container = try! ModelContainer(for: Movie.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    
    container.mainContext.insert(Movie(title: "John Wick", genre: Genre(rawValue: 1)!))
    container.mainContext.insert(Movie(title: "NFS", genre: Genre(rawValue: 2)!))
    container.mainContext.insert(Movie(title: "Fast Furious", genre: Genre(rawValue: 5)!))
    container.mainContext.insert(Movie(title: "Blade Runner", genre: Genre(rawValue: 7)!))
    container.mainContext.insert(Movie(title: "Time", genre: Genre(rawValue: 9)!))
    container.mainContext.insert(Movie(title: "Racing", genre: Genre(rawValue: 3)!))
    container.mainContext.insert(Movie(title: "Calmar", genre: Genre(rawValue: 10)!))
    container.mainContext.insert(Movie(title: "Ocean", genre: Genre(rawValue: 6)!))
    container.mainContext.insert(Movie(title: "NYC", genre: Genre(rawValue: 8)!))
    return container
  }
}
