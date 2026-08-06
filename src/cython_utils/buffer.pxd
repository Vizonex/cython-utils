from libc.stdint cimport uint8_t


cdef extern from "buffer_utils.h":
    # Functions were Adopted from the msgspec C Library

    # It allows a user to extract a buffer from not just
    # bytes objects but unicode objects as well allowing
    # for some helpful lazy assistance with bytes conversions. 
    # returns -1 if an error was raised. Please use release_buffer in order to release
    # the unicode objects correctly.
    int get_buffer "cyutils_get_buffer"(object obj, Py_buffer* view) except -1

    # Releases string and bytes related view objects correctly.
    void release_buffer "cyutils_release_buffer"(Py_buffer* view)

 