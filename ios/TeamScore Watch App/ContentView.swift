import SwiftUI

struct TeamScore: View {
    var color: Color
    var score: Int
    var onScoreChange: (Int)->()
    
    var body: some View {
        GeometryReader{g in
            let size = g.size.height > g.size.width ? g.size.width : g.size.height
            let fontSize = size * 0.8;
            ZStack {
                RoundedRectangle(cornerRadius:11)
                    .fill(color)
                Text(String(score))
                    .font(.system(size: fontSize ))
            }.onTapGesture { location in
                if (location.x < g.size.width / 2) {
                    onScoreChange(score - 1);
                } else {
                    onScoreChange(score + 1);
                }
            }
        }
    }
}

struct ContentView: View {
    @State private var selection = 1
    @StateObject var viewModel = WatchViewModel()
    
    var body: some View {
        TabView(selection: $selection) {
            Button("RESET") {
                viewModel.reset()
            }.tag(0)
            VStack {
                TeamScore(
                    color: .green,
                    score: viewModel.team1Score,
                    onScoreChange: { score in
                        viewModel.updateTeam1Score(score: score);
                    }
                )
                TeamScore(
                    color: .red,
                    score: viewModel.team2Score,
                    onScoreChange: { score in
                        viewModel.updateTeam2Score(score: score);
                    }
                )
            }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
