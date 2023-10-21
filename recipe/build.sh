set -ex

cp ${RECIPE_DIR}/builder.py webp_build/builder.py
python -m pip install . -vv --no-deps --no-build-isolation
