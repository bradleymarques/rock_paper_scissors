extends GutTest

class TestEntity:
    extends GutTest

    func test_pass():
        assert_eq(1, 1)

    func test_fail():
        assert_eq(1, 2)
