# 2020年新工科联盟-Xilinx暑期学校（Summer School）项目
项目介绍：

（项目名称） 仪器仪表—虚拟示波器

（项目概要） 通过板载ADC模块或者DAC模块采集信号，将数据传输给MCU，MCU根据接收到的数据在显示器上绘制并显示波形 

（使用工具） VIVADO 2018.2 

（板卡型号） xc7s15 

（外设列表） miniHDMI转HDMI线、显示屏、中低频信号源-波形信号发生器 

（仓库目录介绍）

Sourcecode中为FPGA源码，其中sources_ADCin为外设输入ADC模块的虚拟示波器源码，sources_DAC2ADC为DAC输入ADC模块的虚拟示波器源码 ；

wave_matlab中为正弦波、三角波和矩形波的离散信号coe文件；

ExecutableFiles中为可直接下载到板卡使用的bit流文件 ；

images中为设计作品展示。
