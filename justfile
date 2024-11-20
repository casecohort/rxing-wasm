build:
  wasm-pack build --scope deviceflow --target web --release --no-opt
  wasm-opt -O --enable-bulk-memory pkg/rxing_wasm_bg.wasm -o opt.wasm
  mv opt.wasm pkg/rxing_wasm_bg.wasm
