import XCTest

@testable import CookieFactory

class CookieTests: XCTestCase {

    func testInit_GingerbreadCookieType_DoesNotReturnNil() {
        let cookie = Cookie(.gingerbread)
        XCTAssertNotNil(cookie)
    }

    func testInit_ShortbreadCookieType_DoesNotReturnNil() {
        let cookie = Cookie(.shortbread)
        XCTAssertNotNil(cookie)
    }

    func testInit_ChocolateChipCookieType_DoesNotReturnNil() {
        let cookie = Cookie(.chocolateChip)
        XCTAssertNotNil(cookie)
    }

    func testInit_GingerbreadCookieType_SetsCookieTypeIvarCorrectly() {
        let cookie = Cookie(.gingerbread)
        XCTAssertEqual(cookie.type, .gingerbread)
    }

    func testInit_ShortbreadCookieType_SetsCookieTypeIvarCorrectly() {
        let cookie = Cookie(.shortbread)
        XCTAssertEqual(cookie.type, .shortbread)
    }

    func testInit_ChocolateChipCookieType_SetsCookieTypeIvarCorrectly() {
        let cookie = Cookie(.chocolateChip)
        XCTAssertEqual(cookie.type, .chocolateChip)
    }
}
