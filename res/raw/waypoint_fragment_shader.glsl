precision mediump float;

uniform sampler2D uTextureSampler;
uniform vec4 uFrontColor;
uniform vec4 uBackColor;

varying vec2 vTexCoord;

void main()
{
    vec4 texColor = texture2D(uTextureSampler, vTexCoord);
    float r = (texColor.r * (uBackColor.r * uBackColor.a - uFrontColor.r * uFrontColor.a) + uFrontColor.r * uFrontColor.a * texColor.a);
    float g = (texColor.g * (uBackColor.g * uBackColor.a - uFrontColor.g * uFrontColor.a) + uFrontColor.g * uFrontColor.a * texColor.a);
    float b = (texColor.b * (uBackColor.b * uBackColor.a - uFrontColor.b * uFrontColor.a) + uFrontColor.b * uFrontColor.a * texColor.a);
    float a = texColor.r * (uBackColor.a - uFrontColor.a) + uFrontColor.a * texColor.a;
    gl_FragColor = vec4(r, g, b, a);
}