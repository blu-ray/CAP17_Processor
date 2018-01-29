/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Test/MultiPlexedALU.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {9U, 0U};



static void Always_46_0(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 5816);
    *((int *)t2) = 1;
    t3 = (t0 + 5280);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 2488U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);
    t8 = (t0 + 2168U);
    t9 = *((char **)t8);
    t8 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 16, 16, 2U, t8, 8, t9, 8);
    t10 = (t0 + 4168);
    xsi_vlogvar_assign_value(t10, t7, 0, 0, 16);
    goto LAB27;

LAB9:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB11:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB13:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB15:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB17:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB19:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB21:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB23:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 4168);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    goto LAB27;

LAB25:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 2328U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 16, 16, 2U, t3, 4, t4, 12);
    t8 = (t0 + 4168);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 16);
    goto LAB27;

}

static void Always_71_1(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 5832);
    *((int *)t2) = 1;
    t3 = (t0 + 5528);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);

LAB5:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB2;

LAB7:    xsi_set_current_line(74, ng0);
    t8 = (t0 + 2168U);
    t9 = *((char **)t8);
    t8 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 16, 16, 2U, t8, 8, t9, 8);
    t10 = (t0 + 4328);
    xsi_vlogvar_assign_value(t10, t7, 0, 0, 16);
    goto LAB27;

LAB9:    xsi_set_current_line(76, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB11:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB13:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB15:    xsi_set_current_line(82, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB17:    xsi_set_current_line(84, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB19:    xsi_set_current_line(86, ng0);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB21:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB27;

LAB23:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 4328);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    goto LAB27;

LAB25:    xsi_set_current_line(92, ng0);
    t3 = (t0 + 2328U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 16, 16, 2U, t3, 4, t4, 12);
    t8 = (t0 + 4328);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 16);
    goto LAB27;

}


extern void work_m_00000000003157793077_3434672255_init()
{
	static char *pe[] = {(void *)Always_46_0,(void *)Always_71_1};
	xsi_register_didat("work_m_00000000003157793077_3434672255", "isim/CAP17_Processor_isim_beh.exe.sim/work/m_00000000003157793077_3434672255.didat");
	xsi_register_executes(pe);
}
