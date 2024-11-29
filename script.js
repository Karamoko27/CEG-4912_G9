// Mock telemetry data
let speed = 0;
let temperature = 0;
let inclination = 0;

// Update gauge data dynamically
function updateGauges() {
    // Simulate values (replace these with real data later)
    speed = Math.floor(Math.random() * 100); // Random speed
    temperature = Math.floor(Math.random() * 50); // Random temperature
    inclination = Math.floor(Math.random() * 30); // Random inclination

    // Log values for testing
    console.log(`Speed: ${speed}, Temp: ${temperature}, Inclination: ${inclination}`);
}

// Update gauges every 2 seconds
setInterval(updateGauges, 2000);

