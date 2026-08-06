from libc.stddef cimport wchar_t


cdef extern from "pythoncapi_compat.h":
    ctypedef struct PyUnicodeWriter:
        pass

    void PyUnicodeWriter_Discard(PyUnicodeWriter *writer)
    PyUnicodeWriter* PyUnicodeWriter_Create(Py_ssize_t length) except NULL
    unicode PyUnicodeWriter_Finish(PyUnicodeWriter *writer)
    int PyUnicodeWriter_WriteChar(PyUnicodeWriter *writer, Py_UCS4 ch) except -1
    int PyUnicodeWriter_WriteStr(PyUnicodeWriter *writer, object obj) except -1
    int PyUnicodeWriter_WriteRepr(PyUnicodeWriter *writer, object obj) except -1
    int PyUnicodeWriter_WriteUTF8(PyUnicodeWriter *writer,
                          const char *str, Py_ssize_t size) except -1
    int PyUnicodeWriter_WriteASCII(PyUnicodeWriter *writer,
                           const char *str, Py_ssize_t size) except -1

    int PyUnicodeWriter_WriteWideChar(PyUnicodeWriter *writer,
                              const wchar_t *str, Py_ssize_t size) except -1

    int PyUnicodeWriter_WriteSubstring(PyUnicodeWriter *writer, object str,
                               Py_ssize_t start, Py_ssize_t end) except -1
    int PyUnicodeWriter_Format(PyUnicodeWriter *writer, const char *format, ...) except -1
