import Foundation

enum Generator {
    static func createNewApp(named appName: String) {
        let fileManager = FileManager.default
        let root = fileManager.currentDirectoryPath + "/\(appName)"

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
                Text("Welcome to \(appName)")
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

    static func createFeature(named name: String) {
        let fileManager = FileManager.default
        let root = fileManager.currentDirectoryPath + "/Features/\(name)"

        try? fileManager.createDirectory(atPath: root, withIntermediateDirectories: true)

        let view = """
        import SwiftUI

        struct \(name)View: View {
            var body: some View {
                Text("\(name) View")
            }
        }
        """

        try? view.write(toFile: "\(root)/\(name)View.swift", atomically: true, encoding: .utf8)

        print("✅ Feature \(name) created with View only (Free version)")
    }
}
