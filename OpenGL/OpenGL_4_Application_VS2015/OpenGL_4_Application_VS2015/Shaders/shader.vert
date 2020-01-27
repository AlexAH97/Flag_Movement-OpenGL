#version 400
layout(location = 0) in vec3 positions;
out vec3 color;
uniform mat4 model;
uniform mat4 view;
uniform mat4 perspective;
uniform float time;
const float amplitude=0.09;
const float frequency=4;
const float PI=3.14159;

void main()
{
	float y;
	if(positions.z!=-0.3f)
		y=amplitude*(sin(-PI*positions.z*frequency+time));
	else
		y=0.0f;
	color = vec3(1.0f,0.0f,0.0f);
	gl_Position=perspective*view*model*vec4(positions.x,y,positions.z,1.0f);
	//gl_Position=perspective*view*model*vec4(positions,1.0f);
}