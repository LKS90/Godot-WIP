shader_type spatial;

varying flat vec3 color;

float random(float inputX, float inputY) {
	vec2 in2 = vec2(inputX, inputY);
	return fract(sin(dot(in2, vec2(12.9898, 78.233))) * 43758.5453);
}

void vertex() {
		float fill_color = clamp(random(UV.x, UV.y), .2, .8);
		color = vec3(fill_color, fill_color, fill_color);
}

void fragment() {
	ALBEDO = color;
}