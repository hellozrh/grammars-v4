# Generated from trgen <version>
set -e
if [ -f transformGrammar.py ]; then python3 transformGrammar.py ; fi
rm -rf node_modules
rm -rf build
mkdir build
cd build
<if(antlrng_tool)>
npm init -y
npm i antlr-ng
<endif>
<if(test.IsWindows)>cmake .. -G "Visual Studio 17 2022" -A x64
<else>cmake ..
<endif>
<if(test.IsWindows)>cmake --build . --config Release
<else>make
<endif>
exit 0
