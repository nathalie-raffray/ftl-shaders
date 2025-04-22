vec3 colorFromIndex(int index) {
    // Use a prime-based hash to create pseudo-random but deterministic colors
    float r = fract(sin(float(index) * 12.9898) * 43758.5453);
    float g = fract(sin(float(index) * 78.233) * 43758.5453);
    float b = fract(sin(float(index) * 37.719) * 43758.5453);
    
    // Ensure colors aren't too dark by setting a minimum brightness
    float minBrightness = 0.2;
    r = mix(minBrightness, 1.0, r);
    g = mix(minBrightness, 1.0, g);
    b = mix(minBrightness, 1.0, b);
    
    return vec3(r, g, b);
}
