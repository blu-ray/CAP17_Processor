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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003694042060_0764665569_init();
    work_m_00000000001443966679_1540373756_init();
    work_m_00000000002623229771_1938225339_init();
    work_m_00000000003087103967_3996337969_init();
    work_m_00000000002229665226_2322003366_init();
    work_m_00000000001251854581_3314966111_init();
    work_m_00000000001307078840_0527389236_init();
    work_m_00000000000772537837_1697328100_init();
    work_m_00000000003508304092_0609960087_init();
    work_m_00000000000727738617_0886308060_init();
    work_m_00000000003157793077_3434672255_init();
    work_m_00000000003499647106_3519601155_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003499647106_3519601155");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
