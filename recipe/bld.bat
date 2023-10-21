@echo on

REM Copy over our simplified building recipe
copy %RECIPE_DIR%\builder.py webp_build\builder.py
if errorlevel 1 exit 1

python -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit 1

