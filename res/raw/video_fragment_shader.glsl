#extension GL_OES_EGL_image_external : require

precision highp float;

varying highp vec2 vTexCoord;
uniform samplerExternalOES uTextureSampler;

void main()
{
    gl_FragColor = texture2D(uTextureSampler, vTexCoord);
}