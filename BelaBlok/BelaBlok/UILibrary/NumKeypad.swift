import SwiftUI

//struct NumberButton: View {
//    var number: Int
//    var action: () -> Void
//
//    var body: some View {
//        Button(action: action) {
//            Text("\(number)")
//                .font(.title)
//                .frame(width: 70, height: 70)
//                .foregroundColor(.white)
//                .background(Color.blue)
//                .cornerRadius(35)
//        }
//    }
//}
//
//struct NumpadView: View {
//    let rows = [
//        [1, 2, 3],
//        [4, 5, 6],
//        [7, 8, 9],
//        [0]
//    ]
//
//    var body: some View {
//        VStack(spacing: 10) {
//            ForEach(rows, id: \.self) { row in
//                HStack(spacing: 10) {
//                    ForEach(row, id: \.self) { number in
//                        NumberButton(number: number) {
//                            // Handle button tap
//                            print("Tapped \(number)")
//                        }
//                    }
//                }
//            }
//        }
//        .padding()
//    }
//}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Enter your pin:")
                .font(.title)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
