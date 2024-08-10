// important to include in order to use rendered Android View to gl texture
#extension GL_OES_EGL_image_external : require

//use samplerExternalOES instead of sampler2D to sample properly the texture coming from Android SurfaceTexture.
uniform samplerExternalOES Texture0;    // The input texture.
uniform int LensLimits;
uniform highp vec4 AdditionalColor;


varying highp vec4 oColor;
varying highp vec2 oTexCoord0;
varying highp vec2 oTexCoord1;
varying highp vec2 oTexCoord2;

void main()
{
    highp float ResultA = 0.0;

    highp float ResultR;

    if (oTexCoord0.x > 1.0 || oTexCoord0.y > 1.0 || oTexCoord0.x < 0.0 || oTexCoord0.y < 0.0)
    {
         ResultR = (LensLimits == 1 ? 0.1 : 0.0);
    }
    else
    {
        ResultR = texture2D(Texture0, oTexCoord0).r;
    }

    highp float ResultG;
    if (oTexCoord1.x > 1.0 || oTexCoord1.y > 1.0 || oTexCoord1.x < 0.0 || oTexCoord1.y < 0.0)
    {
         ResultG = 0.0;
    }
    else
    {
        ResultG = texture2D(Texture0, oTexCoord1).g;
        ResultA = texture2D(Texture0, oTexCoord1).a;
    }

    highp float ResultB;
    if (oTexCoord2.x > 1.0 || oTexCoord2.y > 1.0 || oTexCoord2.x < 0.0 || oTexCoord2.y < 0.0)
    {
         ResultB = (LensLimits == 1 ? 0.3 : 0.0);
    }
    else
    {
        ResultB = texture2D(Texture0, oTexCoord2).b;
    }

    gl_FragColor = vec4(ResultR *  oColor.r, ResultG * oColor.g, ResultB * oColor.b, ResultA) + AdditionalColor;
}
