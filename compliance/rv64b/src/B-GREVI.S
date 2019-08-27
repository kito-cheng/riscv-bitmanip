#include "compliance_test.h"
#include "compliance_io.h"
#include "test_macros.h"

RV_COMPLIANCE_RV32M

RV_COMPLIANCE_CODE_BEGIN
    la a1,test_results
    li t5, 0xf0774453522a1063
    grevi t2,t5,3
    sd t2,0(a1)
    li t3, 0xedd116c18a671b8c
    grevi a6,t3,15
    sd a6,8(a1)
    li a6, 0x8130cd0d02eb0801
    grevi a7,a6,27
    sd a7,16(a1)
    li s1, 0x1f9f61e943737b61
    grevi s2,s1,42
    sd s2,24(a1)
    li s2, 0x915695b3f20d8a82
    grevi a4,s2,59
    sd a4,32(a1)
    li s4, 0x925c6cb79543c51a
    grevi t2,s4,62
    sd t2,40(a1)
    RV_COMPLIANCE_HALT
RV_COMPLIANCE_CODE_END

.data
RV_COMPLIANCE_DATA_BEGIN
test_results:
.fill 6,8,-1
RV_COMPLIANCE_DATA_END