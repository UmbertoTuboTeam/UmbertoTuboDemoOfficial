@echo off
title Custom Shield
color a

:menu
cls
echo.
echo   ________________________                                     { Creato da Ertyuiop_PRO YT }
echo  /========================\                                    { v 1.0 }
echo  === Custom Shield Menu ===                                    { Potrebbero esserci alcuni bug }
echo  \========================/                                    { Le azioni 1,6 e 9 richiedono internet per funzionare }
echo   ------------------------
echo.
echo 1. Controlla aggiornamenti disponibili
echo 2. Controlla aggiornamenti recenti
echo 3. Visualizza utilizzo disco
echo 4. Visualizza informazioni di sistema
echo 5. Pulisci file temporanei
echo 6. ???
echo 7. Riparazione automatica del disco
echo 8. Elenca i processi in esecuzione sul sistema
echo 9. Vedi dispositivi collegati a questa rete
echo 10. Esci
echo.
set /p scelta="Scegli un'opzione (1-10): "

if "%scelta%"=="1" (
    cls
    echo Controllo degli aggiornamenti disponibili...
    winget upgrade
    color a
    set /p update_choice="Vuoi aggiornare tutto? (S/N): "
    if "%update_choice%"=="S" (
        cls
        echo Aggiornamento di tutti i pacchetti in corso...
        winget upgrade --all
        color a
        echo Aggiornamenti completati!
        pause
        goto menu
    ) else if "%update_choice%"=="N" (
        echo Aggiornamenti non eseguiti
        pause
        goto menu
    ) else (
        echo Scelta non valida, aggiornamenti non eseguiti
        pause
        goto menu
    )
    pause
    goto menu
) else if "%scelta%"=="2" (
    cls
    echo Controllo aggiornamenti recenti in corso...
    winget list
    color a
    pause
    goto menu
) else if "%scelta%"=="3" (
    cls
    echo Visualizzazione utilizzo disco...
    wmic logicaldisk get caption, size, freespace
    pause
    goto menu
) else if "%scelta%"=="4" (
    cls
    echo Visualizzazione informazioni di sistema...
    systeminfo
    pause
    goto menu
) else if "%scelta%"=="5" (
    cls
    echo Pulizia dei file temporanei in corso...
    del /q /f /s %temp%\*
    echo Pulizia completata!
    pause
    goto menu
) else if "%scelta%"=="6" (
    cls
    curl ascii.live/can-you-hear-me
    color a
    echo  
    echo /------------------\
    echo === Sorpreso? :D ===
    echo \------------------/
    pause
    goto menu
) else if "%scelta%"=="7" (
    cls
    chkdsk C: /F /R
    color %colore_testo%
    pause
    goto menu
) else if "%scelta%"=="8" (
    cls
    echo Visualizzazione i processi attivi...
    tasklist
    color a
    pause
    goto menu
) else if "%scelta%"=="9" (
    cls
    echo Verifica dei dispositivi collegati in corso...
    arp -a
    pause
    goto menu
) else if "%scelta%"=="10" (
    cls
    echo Uscita in corso... Grazie per aver usato Custom Shield!
    echo Se l'uscita dal programma richiede troppo tempo, chiuderlo manualmente.
    exit
) else if "%scelta%"=="666" (
    cls
    echo         \/
    echo Bruh   .  .
    echo        ____ 
) else if "%scelta%"=="9/11/2001" (
    cls
    echo.
    echo.
    echo.
    echo            ______________
    echo            --------------           ______________
    echo            --------------           --------------
    echo            --------------           --------------                    9/11/2001
    echo            --------------           --------------                    
    echo            --------------           --------------                    R.I.P
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo            --------------           --------------
    echo.
    pause
    goto menu
) else (
    cls
    echo Scelta non valida. Riprovare.
    pause
    goto menu
)