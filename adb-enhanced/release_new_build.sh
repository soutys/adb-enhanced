1. `cd adb-enhanced` # The directory which contains this release file.
2. Copy the relevant files from the parent adbe directory to adbe-enhanced/adbe
   In the root dir of this git repo:
   `cp ../adbe.py adbe/ && cp ../README.md README.md`
2. Modify the setup to update the version
   `vim setup.py`
3. `python3 -m pip install --user --upgrade setuptools wheel`  # One time
4. `python3 setup.py sdist bdist_wheel` # Create the package. Reference: https://packaging.python.org/tutorials/packaging-projects/
   This should create dist directory.
5. This step is probably not required at all, `python3 -m pip install --user --upgrade twine`  # One time
6. `twine upload dist/*`  # Send the package upstream
7. Few mins later, check https://pypi.org/project/adb-enhanced/#history
8. Cleanup: `rm -r build/ dist/`