@echo off
chcp 65001 >nul
title رفع وتحديث المشروع على GitHub
cd /d "C:\Users\MSI\Desktop\ML_Project"
cls
echo ======================================================================
echo   جاري تحديث ورفع مشروع PayGuard إلى GitHub وحذف الملفات القديمة...
echo ======================================================================
echo.
"C:\Users\MSI\.qoder\bin\git\cmd\git.exe" remote set-url origin https://github.com/bavlyemad313-max/NG_FinalProject.git
"C:\Users\MSI\.qoder\bin\git\cmd\git.exe" branch -M main
"C:\Users\MSI\.qoder\bin\git\cmd\git.exe" add .
"C:\Users\MSI\.qoder\bin\git\cmd\git.exe" commit -m "feat: production clean release with dynamic discrepancy risk scaling and new app link"
"C:\Users\MSI\.qoder\bin\git\cmd\git.exe" push -u origin main --force
if %ERRORLEVEL% EQU 0 (
    echo.
    echo ======================================================================
    echo   تم تحديث المشروع بنجاح على GitHub وحذف كل الملفات القديمة الزائدة!
    echo   رابط الريبوزيتوري: https://github.com/bavlyemad313-max/NG_FinalProject
    echo ======================================================================
) else (
    echo.
    echo ======================================================================
    echo   إذا ظهرت لك نافذة في المتصفح لتسجيل الدخول، اضغط زر Authorize الأخضر.
    echo ======================================================================
)
echo.
pause
