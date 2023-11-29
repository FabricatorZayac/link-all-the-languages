package hello

import "core:fmt"
import "core:runtime"
import "core:c"

foreign {
    challenge :: proc (challenge: c.int) -> bool ---
    printf :: proc (fmt: cstring, #c_vararg args: ..any) -> c.int ---
}

@export
hello_odin :: proc (c: c.int) {
    context = runtime.default_context()
    fmt.println("Hello from Odin!")

    challenge(c + 5)
}
