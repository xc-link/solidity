contract C {
    function f() public view {
        assembly {
            function loadimmutable(setimmutable) -> datasize {}
            let dataoffset
        }
    }
}
// ----
// DeclarationError 5017: (75-126): The identifier "loadimmutable" is reserved and can not be used.
// DeclarationError 5017: (98-110): The identifier "setimmutable" is reserved and can not be used.
// DeclarationError 5017: (115-123): The identifier "datasize" is reserved and can not be used.
// DeclarationError 5017: (143-153): The identifier "dataoffset" is reserved and can not be used.
