namespace nonadjacent{
operation NonAdjacentQubitOperation(qs: Qubit[]) : Unit {
    // Ensure the input array has at least 3 qubits
    if (Length(qs) < 3) {
        fail "The operation requires at least 3 qubits.";
    }

    // First step: Swap the first two qubits
    SWAP(qs[0], qs[1]);
    
    // Apply identity gate to the third qubit
    I(qs[2]);
    
    // Second step: Apply identity gate to the first qubit and CNOT gate between the second and third qubits
    I(qs[0]);
    CNOT(qs[1], qs[2]);
    
    // Third step: Swap the first two qubits back to their original positions
    SWAP(qs[0], qs[1]);
    
    // Apply identity gate to the third qubit again
    I(qs[2]);
}

}
