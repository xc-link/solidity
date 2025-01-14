contract C {
    function f() public pure {
        assembly {
            function dup1(dup2) -> dup3 {}
            let dup4
        }
    }
}
// ----
// DeclarationError 5017: (75-105): The identifier "dup1" is reserved and can not be used.
// DeclarationError 5017: (89-93): The identifier "dup2" is reserved and can not be used.
// DeclarationError 5017: (98-102): The identifier "dup3" is reserved and can not be used.
// DeclarationError 5017: (122-126): The identifier "dup4" is reserved and can not be used.
