import SwiftUI

struct ContentView: View {
    var body: some View {
            // 4. Call MainVC View
            MainVCView()
    }
}

//2. Create bridge between SwiftUI & UIKit
struct MainVCView: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    func makeUIViewController(context: Context) -> some UIViewController {
        // 3. Create View Controller Object
        return UINavigationController(rootViewController: WelcomePage())
    }
}



//1. Create View Controller class
