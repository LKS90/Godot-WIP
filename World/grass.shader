shader_type spatial;

varying flat vec3 color;

float random(float inputX, float inputY) {
	vec2 in2 = vec2(inputX, inputY);
	return fract(sin(dot(in2, vec2(12.9898, 78.233))) * 43758.5453);
}

void vertex() {
	if (NORMAL == vec3(0,1,0)) {
		color = vec3(0.75,0.85,0.3) * clamp(random(UV.x, UV.y), .4, .6);
	}
	else {
		color = vec3(0.6,0.4,0.1) * clamp(random(UV.x, UV.y), .3, .7);
	}
}

void fragment() {
	ALBEDO = color;
}