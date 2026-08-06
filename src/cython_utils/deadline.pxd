from cpython.time cimport PyTime_MonotonicRaw, PyTime_t

from .time cimport PyTime_Add

# Deadline API based on pytime.c
# - _PyDeadline_Init (pytime.c)
# - _PyDeadline_Get (pytime.c)
# - PyDeadline_HasPassed (custom, determines if deadline timeout has passed)
# - PyDeadline_IsAlive (custom, determines if deadline timeout hasn't passed)

cdef inline PyTime_t PyDeadline_Init(PyTime_t timeout) noexcept nogil: 
    return PyTime_Add(PyTime_MonotonicRaw(), timeout)

cdef inline PyTime_t PyDeadline_Get(PyTime_t deadline) noexcept nogil:
    return deadline - PyTime_MonotonicRaw()

cdef inline bint PyDeadline_HasPassed(PyTime_t deadline) noexcept nogil:
    return PyDeadline_Get(deadline) < 0

cdef inline bint PyDeadline_IsAlive(PyTime_t deadline) noexcept nogil:
    return PyDeadline_Get(deadline) > 0
