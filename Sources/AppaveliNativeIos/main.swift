import Foundation

let args = CommandLine.arguments

guard args.count >= 3 else {
    print("""
    Usage:
      appaveli-ios init-app <AppName>
      appaveli-ios create-feature <FeatureName>
    """)
    exit(0)
}

let command = args[1]
let name = args[2]

switch command {
case "init-app":
    Generator.createNewApp(named: name)
case "create-feature":
    Generator.createFeature(named: name)
default:
    print("Unknown command: \(command)")
}
