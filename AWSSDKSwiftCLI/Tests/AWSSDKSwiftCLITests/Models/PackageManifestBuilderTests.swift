//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

@testable import AWSSDKSwiftCLI
import XCTest

class PackageManifestBuilderTests: XCTestCase {
    
    let expected = """
    <contents of base package>
    
    // MARK: - Generated
    
    addDependencies(
        clientRuntimeVersion: "1.2.3",
        crtVersion: "4.5.6"
    )

    let serviceTargets: [String] = [
        "A",
        "B",
        "C",
        "D",
        "E",
    ]
    
    serviceTargets.forEach(addServiceTarget)

    let servicesWithIntegrationTests: [String] = [
        "A",
        "B",
        "C",
        "D",
        "E",
    ]

    servicesWithIntegrationTests.forEach(addIntegrationTestTarget)
    """
    
    func testBuild() {
        let subjeect = PackageManifestBuilder(
            clientRuntimeVersion: .init("1.2.3"),
            crtVersion: .init("4.5.6"),
            services: ["A","B","C","D","E"].map { PackageManifestBuilder.Service(name: $0, includeIntegrationTests: true) },
            basePackageContents: { "<contents of base package>" }
        )
        let result = try! subjeect.build()
        XCTAssertEqual(result, expected)
    }
}
