import SwiftUI

struct TeamScore: View {
    var color: Color
    @State private var score: Int = 0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius:11)
                .fill(color)
            Text(String(score))
        }.onTapGesture { location in
            if (location.x < 100) {
                score-=1;
            } else {
                score+=1;
            }
        }
    }
}

struct ContentView: View {
    @State private var selection = 1
    @ObservedObject var viewModel: WatchViewModel = WatchViewModel()
    
    var body: some View {
        TabView(selection: $selection) {
            Button("RESET") {
                print("Button tapped!")
                viewModel.testSend(index: 1)
            }.tag(0)
            VStack {
                TeamScore(color: .green)
                TeamScore(color: .red)
            }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
