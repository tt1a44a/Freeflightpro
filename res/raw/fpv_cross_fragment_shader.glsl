varying highp vec4 oColor;

void main()
{
    gl_FragColor = vec4(oColor.r, oColor.g, oColor.b, oColor.a);
}
