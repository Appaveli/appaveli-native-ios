import XCTest
@testable import AppaveliNativeIOS

final class GeneratorTests: XCTestCase {
    func testCreateFeature() {
        let featureName = "TestFeature"
        Generator.createFeature(named: featureName, withTests: false)

        let fileManager = FileManager.default
        let basePath = fileManager.currentDirectoryPath + "/Features/\(featureName)"

        let viewPath = basePath + "/\(featureName)View.swift"
        let viewModelPath = basePath + "/\(featureName)ViewModel.swift"
        let modelPath = basePath + "/\(featureName)Model.swift"

        XCTAssertTrue(fileManager.fileExists(atPath: viewPath))
        XCTAssertTrue(fileManager.fileExists(atPath: viewModelPath))
        XCTAssertTrue(fileManager.fileExists(atPath: modelPath))

        try? fileManager.removeItem(atPath: basePath)
    }
}
