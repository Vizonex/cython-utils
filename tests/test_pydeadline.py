import pytest

from cython_utils._test import Deadline


@pytest.skip("CI has problems with this. Will investigate later... works fine on a windows PC.")
def test_deadline():
    # test that python's Deadline CAPI works correctly...
    test = set()
    dl = Deadline(0.0001)

    while dl.is_alive():
        test.add("alive")


    if dl.has_passed():
        test.add("dead")

    assert "alive" in test
    assert "dead" in test

