set -e
SOL_HOME=/Users/svenandersson/Documents/sol/

${SOL_HOME}/bin/solc --emit obj --keep -output-dir build demo.sol
llvm-gcc --verbose ./build/*.o ${SOL_HOME}/lib/x86_64-darwin/libsol-runtime.a lib/libglfw3.a -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo -o demo
