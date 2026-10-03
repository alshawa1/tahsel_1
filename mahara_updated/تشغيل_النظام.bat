@echo off
chcp 65001 > nul
echo ----------------------------------------------------
echo  جاري تشغيل نظام أتمتة عمليات مهارة (مشروع STC)...
echo ----------------------------------------------------
cd /d "%~dp0STC_System"
start "" "C:\Users\dell\anaconda3\pythonw.exe" main.py
exit
