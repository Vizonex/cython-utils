"""
_test
-----

WARNING! This is a test file for pytest verification.
Do not try and use these unless you know exactly what you are doing.
If you need any of these and functions or find them useful throw an
issue on github to discuss those changes!!!
"""

class Deadline:
    """used to test that the cythonized version of the PyDeadline
    with custom functions all work correctly."""
    def __init__(self, timeout: object) -> None:
        ...
    
    def is_alive(self) -> bool:
        ...
    
    def has_passed(self) -> bool:
        ...


