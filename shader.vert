
#version 450

// constant ( uniform ) data
layout(binding = 0) uniform _buffer{
	mat4 projMatrix;
	mat4 viewMatrix;
	mat4 modelMatrix;
} ubo;

// vertex buffer data coming in
layout(location = 0) in vec4 inPosition;
layout(location = 1) in vec4 inColor;
layout(location = 2) in vec2 inUV;

// going out to the fragment shader
layout(location = 0) out struct _outVertex {
	vec4 color;
	vec2 uv;
} outVertex;

void main(){
	gl_Position = inPosition * (ubo.modelMatrix * ubo.viewMatrix * ubo.projMatrix);
	
	outVertex.color = inColor;
	outVertex.uv = inUV;
}