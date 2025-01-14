{
    function dup1(dup2) -> dup3 {}
    let dup4
}
// ----
// DeclarationError 5017: (6-36): The identifier "dup1" is reserved and can not be used.
// DeclarationError 5017: (20-24): The identifier "dup2" is reserved and can not be used.
// DeclarationError 5017: (29-33): The identifier "dup3" is reserved and can not be used.
// DeclarationError 5017: (45-49): The identifier "dup4" is reserved and can not be used.
