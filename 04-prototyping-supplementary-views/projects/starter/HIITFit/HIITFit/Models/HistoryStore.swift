
import Foundation

struct ExerciseDay: Identifiable {
  let id = UUID()
  let date: Date
  var exercises: [String] = []
}

struct HistoryStore {
  var exerciseDays: [ExerciseDay] = []
    
    // MARK: - 디버그 모드에서 생성시 createDevData()호출
    init() {
        #if DEBUG
        createDevData()
        #endif
    }
}


