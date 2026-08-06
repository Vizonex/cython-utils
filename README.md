# Cython-Utilities
A Simple pypi cython utilities package mostly consiting of implementations,
shortcuts and Pythoncapi-Compatability things. If I find something small,
neat, and is Apcache 2.0 Friendly it will get added on request.

## What is included
- socketmodule C-API Capsule (From yours truly)
- External `PyTime_t` Functions that might come in handy with lower level projects
  centered around locks and other timeout related systems.
- buffer utilties borrowed from the msgspec library 
  - allowing for both unicode and bytes to be extracted into a `Py_buffer`.
- bytes 
  - PyBytes_Join function from `pythoncapi_compat.h`
- io
  - `Py_fopen` to FILE pointer
  - `Py_fclose` to close a FILE pointer

- long 
  - Most of these are pretty self explanitory so no need to explain, you should get the picture...
  - `object PyLong_FromInt32(int32_t value)`
  - `object PyLong_FromInt64(int64_t value)`
  - `object PyLong_FromUInt32(uint32_t value)`
  - `object PyLong_FromUInt64(uint64_t value)`

  - `int PyLong_AsInt32(object obj, int32_t *pvalue) except -1`
  - `int PyLong_AsInt64(object obj, int64_t *pvalue) except -1`
  - `int PyLong_AsUInt32(object obj, uint32_t *pvalue) except -1`
  - `int PyLong_AsUInt64(object obj, uint64_t *pvalue) except -1`

- 
