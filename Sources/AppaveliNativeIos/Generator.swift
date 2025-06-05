import Foundation

enum Generator {
    static func createNewApp(named appName: String) {
        let fileManager = FileManager.default
        let root = FileManager.default.currentDirectoryPath + "/" + appName

        let paths = [
            "\(root)/App",
            "\(root)/Features/Example",
            "\(root)/Shared"
        ]

        for path in paths {
            try? fileManager.createDirectory(atPath: path, withIntermediateDirectories: true)
        }

        let contentView = """
        import SwiftUI

        struct ContentView: View {
            var body: some View {
                Text(\"Welcome to \(appName)\")
            }
        }

        #Preview {
            ContentView()
        }
        """

        let viewPath = "\(root)/App/ContentView.swift"
        try? contentView.write(toFile: viewPath, atomically: true, encoding: .utf8)

        print("✅ Created new SwiftUI app: \(appName)")
    }

    static func createFeature(named name: String, withTests: Bool) {
        let fileManager = FileManager.default
        let root = FileManager.default.currentDirectoryPath + "/Features/\(name)"

        try? fileManager.createDirectory(atPath: root, withIntermediateDirectories: true)

        let view = """
        import SwiftUI

        struct \(name)View: View {
            var body: some View {
                Text(\"\(name) View\")
            }
        }
        """

        let viewModel = """
        import Foundation

        class \(name)ViewModel: ObservableObject {
            // ViewModel logic here
        }
        """

        let model = """
        import Foundation

        struct \(name)Model {
            // Model properties here
        }
        """

        try? view.write(toFile: "\(root)/\(name)View.swift", atomically: true, encoding: .utf8)
        try? viewModel.write(toFile: "\(root)/\(name)ViewModel.swift", atomically: true, encoding: .utf8)
        try? model.write(toFile: "\(root)/\(name)Model.swift", atomically: true, encoding: .utf8)
        
        if withTests {
            let testRoot = fileManager.currentDirectoryPath + "/Tests/AppaveliNativeIOSTests"
            try? fileManager.createDirectory(atPath: testRoot, withIntermediateDirectories: true)
            let testFile = """
            import XCTest

            final class \(name)ViewModelTests: XCTestCase {
                func testInitialState() {
                    let vm = \(name)ViewModel()
                    // TODO: Add assertions
                }
            }
            """
            try? testFile.write(toFile: "\(testRoot)/\(name)ViewModelTests.swift", atomically: true, encoding: .utf8)
        }

        print("✅ Feature \(name) created with View, ViewModel, and Model")
    }
}
