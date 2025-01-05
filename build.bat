@echo off
set DOCNAMES=thesis seminar_hasil seminar_proposal sidang_skripsi

REM Check if the first argument is 'clean'
if "%1" == "clean" goto clean

REM Compile all documents
if "%1"=="all" goto build_all

REM Compile specific document
if not "%1"=="" (
    if not exist "%1.tex" (
        echo ERROR: Document %1.tex not found!
        exit /b 1
    )
    call :build %1
    exit /b
)

REM Default to building all documents
:build_all
for %%d in (%DOCNAMES%) do (
    call :build %%d
)
exit /b

REM Function to build a single document
:build
echo Building %1...
pdflatex -shell-escape %1.tex || exit /b 1
pdflatex -shell-escape %1.tex || exit /b 1
biber %1 || exit /b 1
pdflatex -shell-escape %1.tex || exit /b 1
pdflatex -shell-escape %1.tex || exit /b 1
exit /b

REM Clean intermediate files
:clean
echo Cleaning files...
del /Q *.bbl *.run.xml *.synctex.gz *.dvi *.log *.aux *.blg *.toc *.lof *.lot *.out *.bcf *.loa *.pdf
exit /b