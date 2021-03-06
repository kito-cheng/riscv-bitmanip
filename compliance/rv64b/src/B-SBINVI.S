#include "compliance_test.h"
#include "compliance_io.h"
#include "test_macros.h"

RV_COMPLIANCE_RV32M

RV_COMPLIANCE_CODE_BEGIN
    la a1,test_results
    li a3, 0xf0774453522a1063
    sbinvi t3,a3,3
    sd t3,0(a1)
    li t3, 0xedd116c18a671b8c
    sbinvi a4,t3,15
    sd a4,8(a1)
    li s7, 0x8130cd0d02eb0801
    sbinvi a4,s7,27
    sd a4,16(a1)
    li s4, 0x1f9f61e943737b61
    sbinvi t4,s4,42
    sd t4,24(a1)
    li a7, 0x915695b3f20d8a82
    sbinvi s10,a7,59
    sd s10,32(a1)
    li a0, 0x925c6cb79543c51a
    sbinvi s4,a0,62
    sd s4,40(a1)
    RV_COMPLIANCE_HALT
RV_COMPLIANCE_CODE_END

.data
RV_COMPLIANCE_DATA_BEGIN
test_results:
.fill 6,8,-1
RV_COMPLIANCE_DATA_END
