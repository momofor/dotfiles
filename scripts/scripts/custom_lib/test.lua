 -- local mylib = require "mylib"
 --
local ffi = require "ffi"
local lub = ffi.load "./libfirst.so"
ffi.cdef "void test_time()"

print(lub.test_time())

