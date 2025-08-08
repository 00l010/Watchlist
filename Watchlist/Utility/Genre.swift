
import Foundation

enum Genre: Int,Codable, CaseIterable, Identifiable {
  var id: Int{
    rawValue
  }
  
  case action       = 1
  case comedy       = 2
  case crime        = 3
  case documentary  = 4
  case drama        = 5
  case fantasy      = 6
  case kids         = 7
  case romance      = 8
  case musical      = 9
  case thriller     = 10
}

extension Genre{
  var name: String{
    switch self{
    case .action:
      "Action"
    case .comedy:
      "Comedy"
    case .crime:
      "Crime"
    case .documentary:
      "Documentary"
    case .drama:
      "Drama"
    case .fantasy:
      "Fantasy"
    case .kids:
      "Kids"
    case .romance:
      "Romance"
    case .musical:
      "Musical"
    case .thriller:
      "Thriller"
    }
  }
}
