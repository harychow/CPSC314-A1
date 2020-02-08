#version 300 es

precision highp float;
precision highp int;

uniform float summonMagic;
// While this uses the 'out' classifier it is not in fact a shared variable,
// what 'out' tells us is that the following variable will be output from the shader it is used in,
// for vertex shaders we may output shared variables,
// for fragment shaders we always output fragment colors
out vec4 out_FragColor;

// The value of our shared variable is given as the interpolation between normals computed in the vertex shader
// below we can see the shared variable we passed from the vertex shader using the 'in' classifier
in vec3 interpolatedNormal;

void main() {

	// The direction of the light (normalized) is important for calculating shading that results from light hitting an object
  	vec3 lightDirection = normalize(vec3(1.0, 1.0, 1.0));

  	// HINT: GLSL PROVIDES THE DOT() FUNCTION
  	// HINT: SHADING IS CALCUATED BY TAKING THE DOT PRODUCT OF THE NORMAL AND LIGHT DIRECTION VECTORS
		float shadeDot = dot(interpolatedNormal, lightDirection);
 	// Set final rendered color to red
  	out_FragColor = vec4(shadeDot, shadeDot, shadeDot, 1.0); // REPLACE ME
}
