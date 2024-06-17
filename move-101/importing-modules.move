// Copyright (c) Mysten Labs, Inc.
// SPDX-License-Identifier: Apache-2.0

#[allow(unused_use)]
module iota_docs::module_one {
    /// Struct defined in the same module.
    public struct Character has drop {}

    /// Simple function that creates a new `Character` instance.
    public fun new(): Character { Character {} }
}

#[allow(unused_use)]
module iota_docs::module_two {
    use iota_docs::module_one; // importing module_one from the same package

    /// Calls the `new` function from the `module_one` module.
    public fun create_and_ignore() {
        let _ = module_one::new();
    }
}

#[allow(unused_use)]
module iota_docs::more_imports {
    use iota_docs::module_one::new;       // imports the `new` function from the `module_one` module
    use iota_docs::module_one::Character; // importing the `Character` struct from the `module_one` module

    /// Calls the `new` function from the `module_one` module.
    public fun create_character(): Character {
        new()
    }
}

#[allow(unused_use)]
module iota_docs::grouped_imports {
    // imports the `new` function and the `Character` struct from
    /// the `module_one` module
    use iota_docs::module_one::{new, Character};

    /// Calls the `new` function from the `module_one` module.
    public fun create_character(): Character {
        new()
    }
}

#[allow(unused_use)]
module iota_docs::self_imports {
    // imports the `Character` struct, and the `module_one` module
    use iota_docs::module_one::{Self, Character};

    /// Calls the `new` function from the `module_one` module.
    public fun create_character(): Character {
        module_one::new()
    }
}

#[allow(unused_use)]
module iota_docs::conflict_resolution {
    // `as` can be placed after any import, including group imports
    use iota_docs::module_one::{Self as mod, Character as Char};

    /// Calls the `new` function from the `module_one` module.
    public fun create(): Char {
        mod::new()
    }
}

#[allow(unused_use)]
module iota_docs::imports {
    use std::string; // std = 0x1, string is a module in the standard library
    use iota::coin;   // iota = 0x2, coin is a module in the iota Framework
}