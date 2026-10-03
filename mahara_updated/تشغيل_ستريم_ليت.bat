@echo off
chcp 65001 > nul
title تشغيل مهارة سيستم على ستريم ليت (Streamlit)

echo.
echo  ======================================================
echo      جاري تشغيل واجهة Streamlit (مهاره سيستم)
echo  ======================================================
echo.

REM تثبيت المكتبات لو مش موجودة
C:\Users\dell\anaconda3\python.exe -c "import streamlit" 2>nul || (
    echo  [جاري تثبيت المكتبات اللازمة من ملف requirements.txt...]
    C:\Users\dell\anaconda3\python.exe -m pip install -r "%~dp0requirements.txt"
)

echo.
echo  [*] السيرفر شغّال وسيتم فتح المتصفح تلقائياً...
echo  [*] لإيقاف التشغيل، أغلق هذه النافذة السوداء.
echo.

C:\Users\dell\anaconda3\python.exe -m streamlit run "%~dp0streamlit_app.py"
pause
