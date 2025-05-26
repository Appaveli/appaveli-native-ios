import Foundation

let arguments = CommandLine.arguments

if arguments.count < 2 || arguments[1] == "--help" || arguments[1] == "-h" {
    print("""
    🔥 Appaveli Native iOS CLI 🔥

    Usage:
      appaveli-ios new <AppName>           Create a new SwiftUI app
      appaveli-ios generate feature <Name> Generate a new feature module

    Options:
      -h, --help        Show this help message
      --version         Show CLI version
    """)
    exit(0)
}

if arguments[1] == "--version" {
    print("Appaveli Native iOS CLI v0.1.0")
    exit(0)
}

let command = arguments[1]

switch command {
case "new":
    guard arguments.count >= 3 else {
        print("❌ Missing app name. Usage: appaveli-ios new <AppName>")
        exit(1)
    }
    let appName = arguments[2]
    Generator.createNewApp(named: appName)

case "generate":
    guard arguments.count >= 4 else {
        print("❌ Missing parameters. Usage: appaveli-ios generate feature <FeatureName>")
        exit(1)
    }
    let subcommand = arguments[2]
    let name = arguments[3]
    if subcommand == "feature" {
        Generator.createFeature(named: name)
    } else {
        print("❌ Unknown generate command: \(subcommand)")
    }

default:
    print("❌ Unknown command: \(command)")
}
