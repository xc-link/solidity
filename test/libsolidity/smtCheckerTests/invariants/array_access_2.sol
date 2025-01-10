contract C {
  constructor() {
    int8 v;
    (v *= v);
  }
}

contract D {
  bool[2] internal a;

  function f() internal {
    do {} while(!(a[1]));
  }
}
// ====
// SMTEngine: chc
// SMTIgnoreInv: no
// SMTSolvers: z3
// SMTTargets: overflow
// ----
// Warning 2018: (102-155): Function state mutability can be restricted to view
// Info 1391: CHC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
// Info 1180: Contract invariant(s) for :D:\n(true || true)\nReentrancy property(ies) for :C:\n((<errorCode> = 0) && (x!5 = x!4))\nReentrancy property(ies) for :D:\n((<errorCode> = 0) && (x!6 = x!4) && (a' = a))\n<errorCode> = 0 -> no errors\n<errorCode> = 1 -> Overflow at v *= v\n
