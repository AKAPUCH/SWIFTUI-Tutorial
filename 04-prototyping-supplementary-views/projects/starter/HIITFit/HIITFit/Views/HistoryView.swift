

import SwiftUI

struct HistoryView: View {
    let history = HistoryStore()
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {}) {
              Image(systemName: "xmark.circle")
                    .font(.title)
                    .padding(.trailing)
            }
            VStack {
                Text("History")
                    .font(.title)
                    .padding()
                
                // MARK: - 테이블 뷰 대신
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section(
                            header:
                                Text(day.date.formatted(as: "MMM d"))
                                .font(.headline)) {
                                    ForEach(day.exercises, id: \.self) { exercise in
                                        Text(exercise)
                                    }
                                }
                    }
                }
                
                
            }
            
        }
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
