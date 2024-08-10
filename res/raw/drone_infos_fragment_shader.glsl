precision mediump float;

uniform sampler2D uTextureSampler;
uniform vec4 uFrontColor;
uniform vec4 uBackColor;

varying vec2 vTexCoord;

void main()
{
    vec4 texColor = texture2D(uTextureSampler, vTexCoord);
    gl_FragColor = texColor;
}