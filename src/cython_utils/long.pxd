from libc.stdint cimport (int8_t, int16_t, int32_t, int64_t, uint8_t, uint16_t,
                          uint32_t, uint64_t)

# Some of these can be useful but it just depends really
# on what you are trying to do...

cdef extern from "pythoncapi_compat.h":
    object PyLong_FromInt32(int32_t value)
    object PyLong_FromInt64(int64_t value)
    object PyLong_FromUInt32(uint32_t value)
    object PyLong_FromUInt64(uint64_t value)

    int PyLong_AsInt32(object obj, int32_t *pvalue) except -1
    int PyLong_AsInt64(object obj, int64_t *pvalue) except -1 
    int PyLong_AsUInt32(object obj, uint32_t *pvalue) except -1
    int PyLong_AsUInt64(object obj, uint64_t *pvalue) except -1

    