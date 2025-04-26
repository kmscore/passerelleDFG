shader_type fog;

// Tout à 0 pour laisser l’inspecteur faire le boulot
uniform float inner_radius : hint_range(0.0, 100.0) = 0.0;
uniform float outer_radius : hint_range(0.0, 100.0) = 0.0;
uniform vec3 fog_color : source_color = vec3(0.0, 0.0, 0.0); // couleur noire invisible
uniform float density_value : hint_range(0.0, 1.0) = 0.0;

void fog() {
    float dist = length(WORLD_POSITION.xz);

    if (dist > inner_radius && dist < outer_radius) {
        EMISSION = fog_color;
        DENSITY = density_value;
    } else {
        DENSITY = 0.0;
    }
}
