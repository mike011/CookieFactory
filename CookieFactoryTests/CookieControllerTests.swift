import XCTest

class CookieControllerTests: XCTestCase {

}

// MARK: Initializer tests
extension CookieControllerTests {

    func testInit_GingerbreadCookieArray_IsNotNil() {
        let cookieJar = CookieController()
        XCTAssertNotNil(cookieJar.gingerbreadCookies)
    }

    func testInit_ShortbreadCookieArray_IsNotNil() {
        let cookieJar = CookieController()
        XCTAssertNotNil(cookieJar.shortbreadCookies)
    }

    func testInit_ChocolateChipCookieArray_IsNotNil() {
        let cookieJar = CookieController()
        XCTAssertNotNil(cookieJar.chocolateChipCookies)
    }

    func testInit_GingerbreadCookieArray_IsZero() {
        let cookieJar = CookieController()
        XCTAssertEqual(cookieJar.gingerbreadCookies, 0)
    }

    func testInit_ShortbreadCookieArray_IsZero() {
        let cookieJar = CookieController()
        XCTAssertEqual(cookieJar.shortbreadCookies, 0)
    }

    func testInit_ChocolateChipCookieArray_IsZero() {
        let cookieJar = CookieController()
        XCTAssertEqual(cookieJar.chocolateChipCookies, 0)
    }
}

// Mark: addGingerbreadCookie tests
extension CookieControllerTests {

    func testAddGingerbreadCookie_Increments_NumberOfGingerbreadCookies_ByOne() {
        let cookieJar = CookieController()

        let numberOfCookies = cookieJar.gingerbreadCookies
        cookieJar.addGingerbreadCookie()

        let expectedNumberOfCookies = numberOfCookies + 1
        XCTAssertEqual(cookieJar.gingerbreadCookies, expectedNumberOfCookies)
    }

    func testAddGingerbreadCookie_DoesNotIncrement_NumberOfShortbreadCookies_ByOne() {

        let cookieJar = CookieController()

        let numberOfCookies = cookieJar.shortbreadCookies
        cookieJar.addGingerbreadCookie()

        XCTAssertEqual(cookieJar.shortbreadCookies, numberOfCookies)
    }

    func testAddGingerbreadCookie_DoesNotIncrement_NumberOfChocolateChipCookies_ByOne() {

        let cookieJar = CookieController()

        let numberOfCookies = cookieJar.chocolateChipCookies
        cookieJar.addGingerbreadCookie()

        XCTAssertEqual(cookieJar.shortbreadCookies, numberOfCookies)
    }
}

// Mark: addShortbreadCookie tests
extension CookieControllerTests {

    func testAddShortbreadCookie_Increments_NumberOfShortbreadCookies_ByOne() {
        let cookieJar = CookieController()

        let numberOfCookies = cookieJar.shortbreadCookies
        cookieJar.addShortbreadCookie()

        let expectedNumberOfCookies = numberOfCookies + 1
        XCTAssertEqual(cookieJar.shortbreadCookies, expectedNumberOfCookies)
    }

    func testAddShortbreadCookie_DoesNotIncrement_NumberOfGingerbreadCookies_ByOne() {

        let cookieJar = CookieController()

        let numberOfCookies = cookieJar.gingerbreadCookies
        cookieJar.addShortbreadCookie()

        XCTAssertEqual(cookieJar.gingerbreadCookies, numberOfCookies)
    }

    func testAddShortbreadCookie_DoesNotIncrement_NumberOfChocolateChipCookies_ByOne() {

        let cookieJar = CookieController()

        let numberOfCookies = cookieJar.chocolateChipCookies
        cookieJar.addShortbreadCookie()

        XCTAssertEqual(cookieJar.chocolateChipCookies, numberOfCookies)
    }
}

// Mark: addChocolateChipCookie tests
extension CookieControllerTests {

    func testAddChocolateChipCookie_Increments_NumberOfChocolateChipCookies_ByOne() {
        let cookieJar = CookieController()

        let numberOfCookies = cookieJar.chocolateChipCookies
        cookieJar.addChocolateChipCookie()

        let expectedNumberOfCookies = numberOfCookies + 1
        XCTAssertEqual(cookieJar.chocolateChipCookies, expectedNumberOfCookies)
    }

    func testAddChocolateChipCookie_DoesNotIncrement_NumberOfGingerbreadCookies_ByOne() {

        let cookieJar = CookieController()

        let numberOfCookies = cookieJar.gingerbreadCookies
        cookieJar.addChocolateChipCookie()

        XCTAssertEqual(cookieJar.gingerbreadCookies, numberOfCookies)
    }

    func testAddChocolateChipCookie_DoesNotIncrement_NumberOfShortbreadCookies_ByOne() {

        let cookieJar = CookieController()

        let numberOfCookies = cookieJar.shortbreadCookies
        cookieJar.addChocolateChipCookie()

        XCTAssertEqual(cookieJar.shortbreadCookies, numberOfCookies)
    }
}

// MARK: Reset tests
extension CookieControllerTests {

    func testReset_GingerbreadCookieArray_WithZeroElements_RmainsEmpty() {
        let cookieJar = CookieController()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.gingerbreadCookies, 0)
    }

    func testReset_ShortbreadCookieArray_WithZeroElements_RmainsEmpty() {
        let cookieJar = CookieController()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.shortbreadCookies, 0)
    }

    func testReset_ChocolateChipCookieArray_WithZeroElements_RmainsEmpty() {
        let cookieJar = CookieController()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.chocolateChipCookies, 0)
    }

    func testReset_GingerbreadCookieArray_WithElements_BecomesEmpty() {
        let cookieJar = CookieController()
        cookieJar.addGingerbreadCookie()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.gingerbreadCookies, 0)
    }

    func testReset_ShortbreadCookieArray_WithElements_BecomesEmpty() {
        let cookieJar = CookieController()
        cookieJar.addShortbreadCookie()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.shortbreadCookies, 0)
    }

    func testReset_ChocolateChipCookieArray_WithElements_BecomesEmpty() {
        let cookieJar = CookieController()
        cookieJar.addChocolateChipCookie()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.chocolateChipCookies, 0)
    }
}


