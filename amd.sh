export CC=/opt/rocm/llvm/bin/clang
export CXX=/opt/rocm/llvm/bin/clang++
#git clone https://github.com/ggerganov/llama.cpp
#cd llama.cpp
make LLAMA_HIPBLAS=1 -j
