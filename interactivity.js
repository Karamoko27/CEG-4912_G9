let speed = 0;
let inclination = 0;
let temperature = 25;

// Update the simulation dynamically
function updateSimulation() {
    document.getElementById("speed-display").innerText = speed;
    document.getElementById("inclination-display").innerText = inclination;
    document.getElementById("temperature-display").innerText = temperature;
}

// Simulate driving
function drive() {
    speed = 30; // Example: Speed increases to 30
    inclination = 5; // Example: Slight upward road
    updateSimulation();
}

// Simulate stopping
function stop() {
    speed = 0;
    updateSimulation();
}

// Simulate reversing
function reverse() {
    speed = -10; // Reverse at -10 km/h
    inclination = -3; // Example: Slight downward road
    updateSimulation();
}

// Initialize the simulation
updateSimulation();
