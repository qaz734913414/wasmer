(wasi_test "mapdir.wasm"
  (map_dirs ".:test_fs/hamlet")
  (assert_return (i64.const 0))
  (assert_stdout "\"./README.md\"\n\"./act1\"\n\"./act2\"\n\"./act3\"\n\"./act4\"\n\"./act5\"\n\"./bookmarks\"\n")
)