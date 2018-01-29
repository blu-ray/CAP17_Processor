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
static const char *ng0 = "D:/Xilinx/HW1/LShifter.v";
static int ng1[] = {0, 0};
static int ng2[] = {15, 0};
static int ng3[] = {14, 0};
static int ng4[] = {13, 0};
static int ng5[] = {12, 0};
static int ng6[] = {11, 0};
static int ng7[] = {10, 0};
static int ng8[] = {9, 0};
static int ng9[] = {8, 0};
static int ng10[] = {7, 0};
static int ng11[] = {6, 0};
static int ng12[] = {5, 0};
static int ng13[] = {4, 0};
static int ng14[] = {3, 0};
static int ng15[] = {2, 0};
static int ng16[] = {1, 0};

static void NetReassign_30_1(char *);


static void Always_29_0(char *t0)
{
    char t8[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    int t26;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3576);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1768);
    xsi_set_assignedflag(t4);
    t5 = (t0 + 5052);
    *((int *)t5) = 1;
    NetReassign_30_1(t0);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1608);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 16);
    xsi_set_current_line(32, ng0);
    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1768);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t4, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB7;

LAB8:    goto LAB2;

LAB7:    xsi_set_current_line(33, ng0);

LAB9:    xsi_set_current_line(34, ng0);
    t15 = (t0 + 1608);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t19 = (t0 + 1608);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t18, 32, t17, t21, 2, t22, 32, 1);
    t23 = (t0 + 2088);
    xsi_vlogvar_assign_value(t23, t18, 0, 0, 32);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 14);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 14);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB10;

LAB11:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 13);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 13);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 12);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 12);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 11);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 11);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB16;

LAB17:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 10);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 10);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 9);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 9);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB20;

LAB21:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 8);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 8);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 7);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 7);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB24;

LAB25:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 6);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 6);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng10)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB26;

LAB27:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 5);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 5);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng11)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB28;

LAB29:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 4);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 4);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng12)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB30;

LAB31:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 3);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 3);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng13)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB32;

LAB33:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 2);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 2);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng14)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB34;

LAB35:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 1);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 1);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng15)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB36;

LAB37:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 0);
    t24 = (t14 & 1);
    *((unsigned int *)t5) = t24;
    t7 = (t0 + 1608);
    t9 = (t0 + 1608);
    t15 = (t9 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng16)));
    xsi_vlog_generic_convert_bit_index(t18, t16, 2, t17, 32, 1);
    t19 = (t18 + 4);
    t25 = *((unsigned int *)t19);
    t26 = (!(t25));
    if (t26 == 1)
        goto LAB38;

LAB39:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1608);
    t6 = (t0 + 1608);
    t7 = (t6 + 72U);
    t9 = *((char **)t7);
    t15 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t8, t9, 2, t15, 32, 1);
    t16 = (t8 + 4);
    t10 = *((unsigned int *)t16);
    t26 = (!(t10));
    if (t26 == 1)
        goto LAB40;

LAB41:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng16)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t4, 32, t5, 32);
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 32);
    goto LAB6;

LAB10:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB11;

LAB12:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB13;

LAB14:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB15;

LAB16:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB17;

LAB18:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB19;

LAB20:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB21;

LAB22:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB23;

LAB24:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB25;

LAB26:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB27;

LAB28:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB29;

LAB30:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB31;

LAB32:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB33;

LAB34:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB35;

LAB36:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB37;

LAB38:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t18), 1);
    goto LAB39;

LAB40:    xsi_vlogvar_assign_value(t5, t4, 0, *((unsigned int *)t8), 1);
    goto LAB41;

}

static void NetReassign_30_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t3 = 0;
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memcpy(t5, t4, 8);
    t2 = (t0 + 5052);
    if (*((int *)t2) > 0)
        goto LAB4;

LAB5:    if (t3 > 0)
        goto LAB6;

LAB7:    t8 = (t0 + 3592);
    *((int *)t8) = 0;

LAB8:
LAB1:    return;
LAB4:    t6 = (t0 + 1768);
    xsi_vlogvar_assignassignvalue(t6, t5, 0, 0, 0, 32, ((int*)(t2)));
    t3 = 1;
    goto LAB5;

LAB6:    t7 = (t0 + 3592);
    *((int *)t7) = 1;
    goto LAB8;

}


extern void work_m_00000000003508304092_0609960087_init()
{
	static char *pe[] = {(void *)Always_29_0,(void *)NetReassign_30_1};
	xsi_register_didat("work_m_00000000003508304092_0609960087", "isim/ALU_isim_beh.exe.sim/work/m_00000000003508304092_0609960087.didat");
	xsi_register_executes(pe);
}
