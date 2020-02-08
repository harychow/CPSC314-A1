#version 300 es

precision highp float;
precision highp int;

// While this uses the 'out' classifier it is not in fact a shared variable,
// what 'out' tells us is that the following variable will be output from the shader it is used in,
// for vertex shaders we may output shared variables,
// for fragment shaders we always output fragment colors
out vec4 out_FragColor;

in vec3 interpolatedNormalItem;

void main() {
  vec3 lightDirection = normalize(vec3(1.0, 1.0, 1.0));
  out_FragColor = vec4(interpolatedNormalItem, 1.0);

}
