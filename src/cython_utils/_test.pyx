from cpython.time cimport PyTime_t

from .deadline cimport (PyDeadline_HasPassed, PyDeadline_Init,
                                    PyDeadline_IsAlive)
from .time cimport PyTime_FromSecondsObject, PyTime_ROUND_TIMEOUT, PyTime_ROUND_CEILING, PyTime_AsMilliseconds


cdef class Deadline:
    """used to test that the cythonized version of the PyDeadline
    with custom functions all work correctly."""
    cdef PyTime_t deadline
    
    def __init__(self, object timeout) -> None:
        cdef PyTime_t dl

        if PyTime_FromSecondsObject(&dl, timeout, PyTime_ROUND_TIMEOUT) < 0:
            raise TypeError(f"{timeout!r} not supported")
        self.deadline = PyDeadline_Init(PyTime_AsMilliseconds(dl, PyTime_ROUND_TIMEOUT))


    cpdef bint is_alive(self):
        return PyDeadline_IsAlive(self.deadline)
    
    cpdef bint has_passed(self):
        return PyDeadline_HasPassed(self.deadline)
    
