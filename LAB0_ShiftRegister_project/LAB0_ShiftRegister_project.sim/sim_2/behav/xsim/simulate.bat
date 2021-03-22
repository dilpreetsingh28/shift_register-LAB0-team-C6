@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Mon Mar 16 18:39:37 +0100 2020
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim tb_ShiftRegister_v1_behav -key {Behavioral:sim_2:Functional:tb_ShiftRegister_v1} -tclbatch tb_ShiftRegister_v1.tcl -view C:/DESD/Project/LAB0_ShiftRegister_project/LAB0_ShiftRegister_project.srcs/sim_2/new/dut1_tb_ShiftRegister_v1_behav.wcfg -log simulate.log"
call xsim  tb_ShiftRegister_v1_behav -key {Behavioral:sim_2:Functional:tb_ShiftRegister_v1} -tclbatch tb_ShiftRegister_v1.tcl -view C:/DESD/Project/LAB0_ShiftRegister_project/LAB0_ShiftRegister_project.srcs/sim_2/new/dut1_tb_ShiftRegister_v1_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
