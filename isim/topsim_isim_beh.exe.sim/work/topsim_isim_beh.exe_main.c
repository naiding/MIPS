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
    work_m_00000000002193828671_3180292034_init();
    work_m_00000000001180818829_2725559894_init();
    work_m_00000000003862624122_2853907611_init();
    xilinxcorelib_ver_m_00000000001067635404_0717030939_init();
    work_m_00000000004259014342_0599133246_init();
    xilinxcorelib_ver_m_00000000001067635404_1184581180_init();
    work_m_00000000003693808920_1331689837_init();
    work_m_00000000001437099049_3230829578_init();
    work_m_00000000002191297720_0967167703_init();
    work_m_00000000003610942951_3823007873_init();
    work_m_00000000002332084212_3879532488_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002332084212_3879532488");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
