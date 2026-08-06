
cdef extern from "pythoncapi_compat.h":
    ctypedef struct PyBytesWriter:
        pass
    
    void* PyBytesWriter_GetData(PyBytesWriter* writer)
    Py_ssize_t PyBytesWriter_GetSize(PyBytesWriter* writer)
    void PyBytesWriter_Discard(PyBytesWriter *writer)
    PyBytesWriter* PyBytesWriter_Create(Py_ssize_t size) except NULL
    bytes PyBytesWriter_FinishWithSize(PyBytesWriter *writer, Py_ssize_t size)
    bytes PyBytesWriter_Finish(PyBytesWriter *writer)
    bytes PyBytesWriter_FinishWithPointer(PyBytesWriter *writer, void *buf)
    int PyBytesWriter_Resize(PyBytesWriter *writer, Py_ssize_t size) except -1
    int PyBytesWriter_Grow(PyBytesWriter *writer, Py_ssize_t size) except -1
    void* PyBytesWriter_GrowAndUpdatePointer(PyBytesWriter *writer,
                                   Py_ssize_t size, void *buf)
    int PyBytesWriter_WriteBytes(PyBytesWriter *writer,
                const void *bytes, Py_ssize_t size) except -1


