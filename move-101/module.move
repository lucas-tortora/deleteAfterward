// Copyright (c) Mysten Labs, Inc.
// SPDX-License-Identifier: Apache-2.0

module iota::my_module {
    // module body
}

module 0x0::address_literal { /* ... */ }
module iota::named_address { /* ... */ }

#[allow(unused_function, unused_const, unused_use)]

module iota::my_module_with_members {
    // import
    use iota::my_module;

    // a constant
    const CONST: u8 = 0;

    // a struct
    public struct Struct {}

    // method alias
    public use fun function as Struct.struct_fun;

    // function
    fun function(_: &Struct) { /* function body */ }
}
