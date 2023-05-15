import XCTest
@testable import EvercodeApp

final class EvercodeAppTests: XCTestCase {
    
    func testKingfisherIsAvailable() {
        
        let imageView = UIImageView()
        XCTAssertNil(imageView.kf.indicator)
    }
}
