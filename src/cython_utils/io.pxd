from libc.stdio cimport FILE as FILE


cdef extern from "pythoncapi_compat.h":
    FILE* Py_fopen(object path, const char* mode)
    int Py_fclose(FILE* file)
