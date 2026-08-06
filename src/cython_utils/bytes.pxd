
cdef extern from "pythoncapi_compat.h":
    bytes PyBytes_Join(object sep, object iterable)
