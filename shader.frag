
#version 450

// from the descriptor sets
layout(set = 0, binding = 1) uniform sampler2D texSampler;

// incoming from further up the pipe - vertex shader
layout(location = 0) in struct _inVertex {
	vec4 color;
	vec2 uv;
} inVertex;

// output
layout(location = 0) out vec4 outColor;

void main(){
	outColor = texture(texSampler, inVertex.uv) * inVertex.color;
}

