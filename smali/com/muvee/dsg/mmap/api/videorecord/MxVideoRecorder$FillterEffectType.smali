.class public final enum Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;
.super Ljava/lang/Enum;
.source "MxVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillterEffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EFFECT_B_W:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_COLOR_FILTER:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_CONTRAST:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_COOL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_COOL_2:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_COOL_3:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_NEGATIVE:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_NIGHT_VISION:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_NORMAL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_OVERLAY_FILTER:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_RGB_SHIFT:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_SEPIA:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_SKETCH:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_SOFT_FOCUS:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_SOFT_FOCUS_1:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_SOFT_FOCUS_2:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_SUNSET:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_SUNSET_2:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field public static final enum EFFECT_VIGNETTE:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field private static final synthetic c:[Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_NORMAL"

    const-string/jumbo v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_NORMAL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 57
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_VIGNETTE"

    const-string/jumbo v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec3 rgb = texture2D(sTexture, vTextureCoord).xyz;\n    float d = distance(vTextureCoord.xy, vec2(0.5,0.5));\n    rgb *= smoothstep(0.75, 0.5, d);\n    gl_FragColor = vec4(vec3(rgb),1.0);\n}\n"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_VIGNETTE:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 58
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_NIGHT_VISION"

    const-string/jumbo v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2\t\t\tvTextureCoord;\nvec3 BrightnessContrastSaturation(vec3 color, float brt, float con, float sat)\n{\n\tvec3 black = vec3(0., 0., 0.);\n\tvec3 middle = vec3(0.5, 0.5, 0.5);\n\tfloat luminance = dot(color, vec3(0.2125, 0.7154, 0.0721));\n\tvec3 gray = vec3(luminance, luminance, luminance);\n\tvec3 brtColor = color * brt;\n\tvec3 conColor = mix(middle, brtColor, con);\n\tvec3 satColor = mix(gray, conColor, sat);\n\treturn satColor;\n}\nvoid main (void)\n{\n\tvec4 color = texture2D(sTexture, vTextureCoord);\n\tvec3 result = BrightnessContrastSaturation(color.rgb, 1.5, 1.3, 0.9);\n\tlowp vec4 colorShadow = vec4(0.0, 0.0, 0.0, 1.);\n\tlowp vec4 colorHighlight = vec4(0.662745, 0.803921, 0.584313, 1.);\n\tfloat lum = (result.r + result.g + result.b)/3.0;\n\tlowp vec4 mixColor = mix(colorShadow, colorHighlight, lum);\n\tlowp vec4 colorBalance = vec4(mixColor.r, mixColor.g*1.1, mixColor.b, mixColor.a);\n\tfloat d = distance(vTextureCoord.xy, vec2(0.5,0.5));\n\tcolorBalance *= smoothstep(0.75, 0.5, d);\n\tgl_FragColor = colorBalance;\n}\n"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_NIGHT_VISION:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 59
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_B_W"

    const-string/jumbo v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n\tlowp vec4 color = texture2D(sTexture, vTextureCoord);\n\tfloat rCol = color.r;\n\tfloat gCol = color.g;\n\tfloat bCol = color.b;\n\tfloat gray = (rCol + gCol + bCol)/3.0;\n\tif (gray > 1.0)\n\t\tgray = 1.0;\n\tcolor.rgb = vec3(gray, gray, gray);\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_B_W:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 60
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_NEGATIVE"

    const-string/jumbo v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    lowp vec3 color = texture2D(sTexture, vTextureCoord).rgb;\n    lowp vec3 negative = vec3(1.0, 1.0, 1.0) - color;\n    gl_FragColor = vec4(negative, 1.0);\n}\n"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_NEGATIVE:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 61
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_SEPIA"

    const/4 v2, 0x5

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    lowp vec4 color = texture2D(sTexture, vTextureCoord);\n    vec4 matColor1 = vec4(0.3588, 0.7044, 0.1368, 0.0);\n    vec4 matColor2 = vec4(0.299, 0.587, 0.114, 0.0);\n    vec4 matColor3 = vec4(0.2392, 0.4696, 0.0912, 0.0);\n    vec4 matColor4 = vec4(0.0, 0.0, 0.0, 1.0);\n    lowp vec4 outputColor = vec4(dot(color,matColor1), dot(color,matColor2), dot(color,matColor3), dot(color,matColor4));\n    gl_FragColor = mix(color, outputColor, 1.0);\n}\n"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SEPIA:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 62
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_SKETCH"

    const/4 v2, 0x6

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n\tlowp vec4 color = texture2D(sTexture, vTextureCoord);\n\tfloat width = 1280.0;\n\tfloat height = 720.0;\n\tfloat magT = 0.8;\n\tvec2 stp0 = vec2(1.0/width, 0.0);\n\tvec2 st0p = vec2(0.0, 1.0/height);\n\tvec2 stpp = vec2(1.0/width, 1.0/height);\n\tvec2 stpm = vec2(1.0/width, -1.0/height);\n\tfloat im1m1 = texture2D(sTexture, vTextureCoord-stpp).r;\n\tfloat ip1p1 = texture2D(sTexture, vTextureCoord+stpp).r;\n\tfloat im1p1 = texture2D(sTexture, vTextureCoord-stpm).r;\n\tfloat ip1m1 = texture2D(sTexture, vTextureCoord+stpm).r;\n\tfloat im10 = texture2D(sTexture, vTextureCoord-stp0).r;\n\tfloat ip10 = texture2D(sTexture, vTextureCoord+stp0).r;\n\tfloat i0m1 = texture2D(sTexture, vTextureCoord-st0p).r;\n\tfloat i0p1 = texture2D(sTexture, vTextureCoord+st0p).r;\n\tfloat h = -1.0*im1p1 - 2.0*i0p1 - 1.0*ip1p1 + 1.0*im1m1 + 2.0*i0m1 + 1.0*ip1m1;\n\tfloat v = -1.0*im1m1 - 2.0*im10 - 1.0*im1p1 + 1.0*ip1m1 + 2.0*ip10 + 1.0*ip1p1;\n\tfloat mag = 1.0 - length(vec2(h, v));\n\tif (mag < magT)\n\t{\n\t\tcolor.rgb = vec3(mag);\n\t}\n\telse\n\t{\n\t\tcolor.rgb = vec3(1.0);\n\t}\n\tgl_FragColor = color;\n}\n"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SKETCH:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 63
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_SUNSET"

    const/4 v2, 0x7

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvec3 contrast(vec3 color, float value)\n{\n\tvec3 middle = vec3(0.5, 0.5, 0.5);\n\tvec3 conColor = mix(middle, color, value);\n\treturn conColor;\n}\nvec4 filter(vec4 color)\n{\n\tlowp vec4 yellowColor = vec4(1.0, 0.827451, 0.315686, 1.0);\n\tlowp vec4 redColor = vec4(1.0, 0.290196, 0.252941, 1.0);\n\tlowp vec4 blendColor = color * (yellowColor.a * (color/color.a) + (2.0 * yellowColor * (1.0 - (color/color.a)))) + yellowColor * (1.0 - color.a) + color * (1.0 - yellowColor.a);\n\tlowp vec4 blendColor2 = blendColor * (redColor.a * (blendColor/blendColor.a) + (2.0 * redColor * (1.0 - (blendColor/blendColor.a)))) + redColor * (1.0 - blendColor.a) + blendColor * (1.0 - redColor.a);\n\treturn blendColor2;\n}\nvoid main (void)\n{\n\tlowp vec4 color = texture2D(sTexture, vTextureCoord);\n\tlowp vec3 conColor = contrast(color.rgb, 1.2);\n\tlowp vec3 conColorAdjust = vec3(conColor.r*0.8, conColor.g*1.1, conColor.b*1.05);\n\tlowp vec4 newColor = filter(vec4(conColorAdjust, color.a));\n\tlowp vec4 mixColor = mix(newColor, color, 0.27451);\n\tgl_FragColor = mixColor;\n}\n"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SUNSET:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 64
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_SUNSET_2"

    const/16 v2, 0x8

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvec3 contrast(vec3 color, float value)\n{\n\tvec3 middle = vec3(0.5, 0.5, 0.5);\n\tvec3 conColor = mix(middle, color, value);\n\treturn conColor;\n}\nvec4 filter(vec4 color)\n{\n\tlowp vec4 yellowColor = vec4(1.0, 0.827451, 0.315686, 1.0);\n\tlowp vec4 redColor = vec4(1.0, 0.5, 0.3, 1.0);\n\tlowp vec4 blendColor = color * (yellowColor.a * (color/color.a) + (2.0 * yellowColor * (1.0 - (color/color.a)))) + yellowColor * (1.0 - color.a) + color * (1.0 - yellowColor.a);\n\tlowp vec4 blendColor2 = blendColor * (redColor.a * (blendColor/blendColor.a) + (2.0 * redColor * (1.0 - (blendColor/blendColor.a)))) + redColor * (1.0 - blendColor.a) + blendColor * (1.0 - redColor.a);\n\treturn blendColor2;\n}\nvoid main (void)\n{\n\tlowp vec4 color = texture2D(sTexture, vTextureCoord);\n\tlowp vec3 conColor = contrast(color.rgb, 1.2);\n\tlowp vec3 conColorAdjust = vec3(conColor.r*0.8, conColor.g*1.1, conColor.b*1.05);\n\tlowp vec4 newColor = filter(vec4(conColorAdjust, color.a));\n\tlowp vec4 mixColor = mix(newColor, color, 0.27451);\n\tgl_FragColor = mixColor;\n}\n"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SUNSET_2:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 65
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_SOFT_FOCUS"

    const/16 v2, 0x9

    const-string v3, "\t\t\t\tuniform mat4 uMVPMatrix;\n\t\t\t\tuniform mat4 uSTMatrix;\n\t\t\t\tattribute highp vec4\taPosition;\n\t\t\t\tattribute mediump vec4\taTextureCoord;\n\t\t\t\tvarying mediump vec2\tvTexCoord;\n\t\t\t\tvarying mediump vec2\tvTexCoords11;\n\t\t\t\tvarying mediump vec2\tvTexCoords00;\n\t\t\t\tvarying mediump vec2\tvTexCoords02;\n\t\t\t\tvarying mediump vec2\tvTexCoords20;\n\t\t\t\tvarying mediump vec2\tvTexCoords22;\n\t\t\t\tvoid main(void)\n\t\t\t\t{\n\t\t\t\t\tfloat stepsizeX = 0.004;\n\t\t\t\t\tfloat stepsizeY = 0.004;\n\t\t\t\t\tgl_Position = uMVPMatrix * aPosition;\n\t\t\t\t\tvTexCoord = (uSTMatrix * aTextureCoord).xy;\n\t\t\t\t\tvTexCoords11 = vTexCoord;\n\t\t\t\t\tvTexCoords00 = vTexCoord + vec2(-stepsizeX, -stepsizeY);\n\t\t\t\t\tvTexCoords02 = vTexCoord + vec2(stepsizeX, -stepsizeY);\n\t\t\t\t\tvTexCoords20 = vTexCoord + vec2(stepsizeX, stepsizeY);\n\t\t\t\t\tvTexCoords22 = vTexCoord + vec2(-stepsizeX, stepsizeY);\n\t\t\t\t}"

    const-string v4, "#extension GL_OES_EGL_image_external : require\n\tprecision mediump float;\n\tuniform samplerExternalOES\tuSampler2d;\n\tvarying mediump vec2\tvTexCoords11;\n\tvarying mediump vec2\tvTexCoords00;\n\tvarying mediump vec2\tvTexCoords02;\n\tvarying mediump vec2\tvTexCoords20;\n\tvarying mediump vec2\tvTexCoords22;\n\tvarying vec2 vTexCoord;\n\tvec4 blur()\n\t{\n\t\tlowp vec4 sum = vec4(0.0);\n\t\tsum = texture2D(uSampler2d, vTexCoords11) + texture2D(uSampler2d, vTexCoords00) +\n\t\t\ttexture2D(uSampler2d, vTexCoords02) + texture2D(uSampler2d, vTexCoords20) +\n\t\t\ttexture2D(uSampler2d, vTexCoords22);\n\t\tsum = 0.2 * sum;\n\t\treturn sum;\n\t}\n\tvec4 softFocus()\n\t{\n\t\tlowp vec4 color = vec4(0.0);\n\t\tlowp vec4 sum = vec4(0.0);\n\t\tfloat distX = (vTexCoord.x - 0.5)*1.777;\n\t\tfloat distY = (vTexCoord.y - 0.5);\n\t\tfloat radiusSq = distX*distX + distY*distY;\n\t\tfloat focusRadiusSq = 0.065;\n\t\tfloat feather = 0.16;\n\t\tfloat colorIntensity = 0.47;\n\t\tif (radiusSq >= focusRadiusSq)\n\t\t{\n\t\t\tcolor = blur();\n\t\t\tlowp vec3 tint = vec3(0.0, 0.0, 0.0);\n\t\t\tfloat featherOffset = radiusSq - focusRadiusSq;\n\t\t\tlowp float fColorLevel = colorIntensity;\n\t\t\tif ( featherOffset <= feather )\n\t\t\t{\n\t\t\t\tfloat fLevel = featherOffset / feather;\n\t\t\t\tfColorLevel = colorIntensity * fLevel;\n\t\t\t}\n\t\t\tlowp vec3 tintColor = mix(color.rgb, tint, fColorLevel);\n\t\t\treturn vec4(tintColor, color.a);\n\t\t}\n\t\telse\n\t\t{\n\t\t\treturn texture2D(uSampler2d, vTexCoord);\n\t\t}\n\t}\n\tvoid main (void)\n\t{\n\t\tgl_FragColor = softFocus();\n\t}"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SOFT_FOCUS:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 66
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_SOFT_FOCUS_1"

    const/16 v2, 0xa

    const-string v3, "\t\t\t\tuniform mat4 uMVPMatrix;\n\t\t\t\tuniform mat4 uSTMatrix;\n\t\t\t\tattribute highp vec4\taPosition;\n\t\t\t\tattribute mediump vec4\taTextureCoord;\n\t\t\t\tvarying mediump vec2\tvTexCoord;\n\t\t\t\tvarying mediump vec2\tvTexCoords11;\n\t\t\t\tvarying mediump vec2\tvTexCoords00;\n\t\t\t\tvarying mediump vec2\tvTexCoords02;\n\t\t\t\tvarying mediump vec2\tvTexCoords20;\n\t\t\t\tvarying mediump vec2\tvTexCoords22;\n\t\t\t\tvoid main(void)\n\t\t\t\t{\n\t\t\t\t\tfloat stepsizeX = 0.004;\n\t\t\t\t\tfloat stepsizeY = 0.004;\n\t\t\t\t\tgl_Position = uMVPMatrix * aPosition;\n\t\t\t\t\tvTexCoord = (uSTMatrix * aTextureCoord).xy;\n\t\t\t\t\tvTexCoords11 = vTexCoord;\n\t\t\t\t\tvTexCoords00 = vTexCoord + vec2(-stepsizeX, -stepsizeY);\n\t\t\t\t\tvTexCoords02 = vTexCoord + vec2(stepsizeX, -stepsizeY);\n\t\t\t\t\tvTexCoords20 = vTexCoord + vec2(stepsizeX, stepsizeY);\n\t\t\t\t\tvTexCoords22 = vTexCoord + vec2(-stepsizeX, stepsizeY);\n\t\t\t\t}"

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES\tuSampler2d;\nvarying mediump vec2\tvTexCoords11;\nvarying mediump vec2\tvTexCoords00;\nvarying mediump vec2\tvTexCoords02;\nvarying mediump vec2\tvTexCoords20;\nvarying mediump vec2\tvTexCoords22;\nvarying vec2 vTexCoord;\nvec4 blur()\n{\n\tlowp vec4 sum = vec4(0.0);\n\tsum = texture2D(uSampler2d, vTexCoords11) + texture2D(uSampler2d, vTexCoords00) +\n\t\ttexture2D(uSampler2d, vTexCoords02) + texture2D(uSampler2d, vTexCoords20) +\n\t\ttexture2D(uSampler2d, vTexCoords22);\n\tsum = 0.2 * sum;\n\treturn sum;\n}\nvec4 softFocus()\n{\n\tlowp vec4 color = vec4(0.0);\n\tlowp vec4 sum = vec4(0.0);\n\tlowp vec4 original = texture2D(uSampler2d, vTexCoord);\n\tfloat distX = (vTexCoord.x - 0.5)*1.777;\n\tfloat distY = (vTexCoord.y - 0.5);\n\tfloat radius = sqrt(distX*distX + distY*distY);\n\tif (radius >= 0.1)\n\t{\n\t\tcolor = blur();\n\t\tlowp vec3 tint = vec3(0.0, 0.0, 0.0);\n\t\tlowp float fColorLevel = 0.0;\n\t\tlowp vec3 originalAndBlurColor = mix(original.rgb, color.rgb, (radius - 0.1) / 0.9 );\n\t\tif ( radius >= 0.5 ){\n\t\t\tfColorLevel = ( radius - 0.5 ) / 0.5 ;\n\t\t}\n\t\tlowp vec3 originalAndBlurColorAndTint = mix(originalAndBlurColor.rgb, tint.rgb, fColorLevel);\n\t\treturn vec4(originalAndBlurColorAndTint, color.a);\n\t}\n\telse\n\t{\n\t\treturn original;\n\t}\n}\nvoid main (void)\n{\n\tgl_FragColor = softFocus();\n}\n"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SOFT_FOCUS_1:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 67
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_SOFT_FOCUS_2"

    const/16 v2, 0xb

    const-string v3, "\t\t\t\t\tuniform mat4 uMVPMatrix;\n\t\t\t\t\tuniform mat4 uSTMatrix;\n\t\t\t\t\tattribute highp vec4\taPosition;\n\t\t\t\t\tattribute mediump vec4\taTextureCoord;\n\t\t\t\t\tvarying mediump vec2\tvTexCoord;\n\t\t\t\t\tvarying mediump vec2\tvTexCoords00;\n\t\t\t\t\tvarying mediump vec2\tvTexCoords02;\n\t\t\t\t\tvarying mediump vec2\tvTexCoords20;\n\t\t\t\t\tvarying mediump vec2\tvTexCoords22;\n\t\t\t\t\tvoid main(void)\n\t\t\t\t\t{\n\t\t\t\t\t\tgl_Position = uMVPMatrix * aPosition;\n\t\t\t\t\t\tvTexCoord = (uSTMatrix * aTextureCoord).xy;\n\t\t\t\t\t\tfloat stepsizeX = 0.004;\n\t\t\t\t\t\tfloat stepsizeY = 0.004;\n\t\t\t\t\t\tvTexCoords00 = vTexCoord + vec2(-stepsizeX, -stepsizeY);\n\t\t\t\t\t\tvTexCoords02 = vTexCoord + vec2(stepsizeX, -stepsizeY);\n\t\t\t\t\t\tvTexCoords20 = vTexCoord + vec2(stepsizeX, stepsizeY);\n\t\t\t\t\t\tvTexCoords22 = vTexCoord + vec2(-stepsizeX, stepsizeY);\n\t\t\t\t\t}"

    const-string v4, "\t\t\t\t\t#extension GL_OES_EGL_image_external : require\n\t\t\t\t\tprecision mediump float;\n\t\t\t\t\tuniform samplerExternalOES\tuSampler2d;\n\t\t\t\t\tvarying mediump vec2\t\tvTexCoord;\n\t\t\t\t\tvarying mediump vec2\t\tvTexCoords00;\n\t\t\t\t\tvarying mediump vec2\t\tvTexCoords02;\n\t\t\t\t\tvarying mediump vec2\t\tvTexCoords20;\n\t\t\t\t\tvarying mediump vec2\t\tvTexCoords22;\n\t\t\t\t\tvec4 blur()\n\t\t\t\t\t{\n\t\t\t\t\t\tlowp vec4 sum = vec4(0.0);\n\t\t\t\t\t\tsum = texture2D(uSampler2d, vTexCoord) + texture2D(uSampler2d, vTexCoords00) +\n\t\t\t\t\t\t\ttexture2D(uSampler2d, vTexCoords02) + texture2D(uSampler2d, vTexCoords20) +\n\t\t\t\t\t\t\ttexture2D(uSampler2d, vTexCoords22);\n\t\t\t\t\t\tsum = 0.2 * sum;\n\t\t\t\t\t\treturn sum;\n\t\t\t\t\t}\n\t\t\t\t\tvoid main()\n\t\t\t\t\t{\n\t\t\t\t\t\t float FogDensity = 11.;\n\t\t\t\t\t\t vec4 FogColor = vec4(0.0, 0.0, 0.0, 1.0);\n\t\t\t\t\t\t vec4 color = texture2D(uSampler2d, vTexCoord);\n\t\t\t\t\t\t float FogDistance = distance(vec2(0.5,0.5),vTexCoord)*0.125;\n\t\t\t\t\t\t float FogFactor = exp(-abs(FogDistance * FogDensity))*1.2;\n\t\t\t\t\t\t vec4 blurColor = blur();\n\t\t\t\t\t\t lowp vec4 mixBlurColor = mix(blurColor, color, FogFactor * 0.5);\n\t\t\t\t\t\t vec4 mixFogColor = mix(FogColor, color, FogFactor);\n\t\t\t\t\t\t vec4 mixColor = mix(mixFogColor, mixBlurColor, 0.5);\n\t\t\t\t\t\t gl_FragColor = mixColor;\n\t\t\t\t\t}"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SOFT_FOCUS_2:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 68
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_RGB_SHIFT"

    const/16 v2, 0xc

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "\t\t#extension GL_OES_EGL_image_external : require\n\t\tprecision mediump float;\n\t\tuniform samplerExternalOES\tuSampler2d;\n\t\tvarying vec2\t\t\tvTextureCoord;\n\t\tvoid main (void)\n\t\t{\n\t\t\tlowp vec4 color = texture2D(uSampler2d, vTextureCoord);\n\t\t\tlowp vec3 result = vec3(0.0);\n\t\t\tlowp float redShiftX = -0.003;\n\t\t\tlowp float greenShiftX = 0.003;\n\t\t\tlowp vec2 vTexCoord1 = vTextureCoord + vec2(redShiftX , 0.0);\n\t\t\tlowp vec2 vTexCoord2 = vTextureCoord + vec2(greenShiftX, 0.0);\n\t\t\tlowp vec3 color1 = texture2D(uSampler2d, vTexCoord1).rgb;\n\t\t\tlowp vec3 color2 = texture2D(uSampler2d, vTexCoord2).rgb;\n\t\t\tresult = vec3(color1.r, color2.g, color.b);\n\t\t\tgl_FragColor = vec4(result, 1.0);\n\t\t}"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_RGB_SHIFT:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 69
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_COOL"

    const/16 v2, 0xd

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "\t\t#extension GL_OES_EGL_image_external : require\n\t\tprecision mediump float;\n\t\tuniform samplerExternalOES\t\tuSampler2d;\n\t\tvarying vec2\t\t\t\tvTextureCoord;\n\t\tvec3 contrast(vec3 color, float value)\n\t\t{\n\t\t\tvec3 middle = vec3(0.5, 0.5, 0.5);\n\t\t\tvec3 conColor = mix(middle, color, value);\n\t\t\treturn conColor;\n\t\t}\n\t\tvoid main()\n\t\t{\n\t\t\tlowp vec4 color = texture2D(uSampler2d, vTextureCoord);\n\t\t\tlowp vec4 conColor = vec4(contrast(color.rgb, 1.2), color.a);\n\t\t\tlowp vec4 colorShadow = vec4(0.0, 0.0, 0.0, 1.0);\n\t\t\tlowp vec4 colorHighlight = vec4(0.772549, 0.819607, 1.0, 1.0);\n\t\t\tfloat lum = (conColor.r + conColor.g + conColor.b)/3.0;\n\t\t\tlowp vec4 mixColor = mix(colorShadow, colorHighlight, lum);\n\t\t\tlowp vec4 tintColor = mix(conColor, mixColor, 0.2);\n\t\t\tlowp vec4 colorBalance = vec4(tintColor.r*0.85, tintColor.g*0.85, tintColor.b*1.08, tintColor.a);\n\t\t\tgl_FragColor = colorBalance;\n\t\t}"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_COOL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 70
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_COOL_2"

    const/16 v2, 0xe

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "\t\t#extension GL_OES_EGL_image_external : require\n\t\tprecision mediump float;\n\t\tuniform samplerExternalOES\t\tuSampler2d;\n\t\tvarying vec2\t\t\t\tvTextureCoord;\n\t\tvec3 contrast(vec3 color, float value)\n\t\t{\n\t\t\tvec3 middle = vec3(0.5, 0.5, 0.5);\n\t\t\tvec3 conColor = mix(middle, color, value);\n\t\t\treturn conColor;\n\t\t}\n\t\tvoid main()\n\t\t{\n\t\t\tlowp vec4 color = texture2D(uSampler2d, vTextureCoord);\n\t\t\tlowp vec4 conColor = vec4(contrast(color.rgb, 1.8), color.a);\n\t\t\tlowp vec4 colorShadow = vec4(0.0, 0.0, 0.0, 1.0);\n\t\t\tlowp vec4 colorHighlight = vec4(0.772549, 0.819607, 1.0, 1.0);\n\t\t\tfloat lum = dot(vec3(0.30, 0.59, 0.11), conColor.xyz);\n\t\t\tlowp vec4 mixColor = mix(colorShadow, colorHighlight, lum);\n\t\t\tlowp vec4 tintColor = mix(conColor, mixColor, 0.2);\n\t\t\tlowp vec4 colorBalance = vec4(tintColor.r*0.85, tintColor.g*0.85, tintColor.b*1.08, tintColor.a);\n\t\t\tgl_FragColor = colorBalance;\n\t\t}"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_COOL_2:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 71
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_COOL_3"

    const/16 v2, 0xf

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "\t\t#extension GL_OES_EGL_image_external : require\n\t\tprecision mediump float;\n\t\tuniform samplerExternalOES\t\tuSampler2d;\n\t\tvarying vec2\t\t\t\tvTextureCoord;\n\t\tvec3 contrast(vec3 color, float value)\n\t\t{\n\t\t\tvec3 middle = vec3(0.5, 0.5, 0.5);\n\t\t\tvec3 conColor = mix(middle, color, value);\n\t\t\treturn conColor;\n\t\t}\n\t\tvoid main()\n\t\t{\n\t\t\tlowp vec4 color = texture2D(uSampler2d, vTextureCoord);\n\t\t\tlowp vec4 conColor = vec4(contrast(color.rgb, 1.2), color.a);\n\t\t\tlowp vec4 colorShadow = vec4(0.0, 0.0, 0.0, 1.0);\n\t\t\tlowp vec4 colorHighlight = vec4(0.772549, 0.819607, 1.0, 1.0);\n\t\t\tfloat lum = dot(vec3(0.30, 0.59, 0.11), conColor.xyz);\n\t\t\tlowp vec4 mixColor = mix(colorShadow, colorHighlight, lum);\n\t\t\tlowp vec4 tintColor = mix(conColor, mixColor, 0.2);\n\t\t\tlowp vec4 colorBalance = vec4(tintColor.r*0.2, tintColor.g*0.85, tintColor.b*0.08, tintColor.a);\n\t\t\tgl_FragColor = colorBalance;\n\t\t}"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_COOL_3:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 72
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_CONTRAST"

    const/16 v2, 0x10

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2            vTextureCoord;\nvoid main (void)\n{\n\tlowp float uContrast = 1.75;\n\tlowp float uOpacity = 1.0;\n\tlowp vec4 color = texture2D(sTexture, vTextureCoord);\n\tcolor.rgb /= color.a;\n\tlowp vec3 contrast = ((color.rgb - 0.5) * max(uContrast, 0.0)) + 0.5;\n\tcontrast *= color.a;\n\tcolor.rgb *= color.a;\n\tgl_FragColor = vec4(mix(color.rgb, contrast, uOpacity), 1.0);\n}\n"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_CONTRAST:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 73
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_COLOR_FILTER"

    const/16 v2, 0x11

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_COLOR_FILTER:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 74
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    const-string v1, "EFFECT_OVERLAY_FILTER"

    const/16 v2, 0x12

    const-string/jumbo v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_OVERLAY_FILTER:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 55
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_NORMAL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_VIGNETTE:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_NIGHT_VISION:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_B_W:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_NEGATIVE:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SEPIA:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SKETCH:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SUNSET:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SUNSET_2:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SOFT_FOCUS:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SOFT_FOCUS_1:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_SOFT_FOCUS_2:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_RGB_SHIFT:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_COOL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_COOL_2:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_COOL_3:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_CONTRAST:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_COLOR_FILTER:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_OVERLAY_FILTER:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->c:[Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->a:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->b:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->b:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->a:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->c:[Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    return-object v0
.end method
