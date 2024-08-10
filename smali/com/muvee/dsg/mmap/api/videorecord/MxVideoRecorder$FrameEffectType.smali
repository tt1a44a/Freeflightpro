.class public final enum Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;
.super Ljava/lang/Enum;
.source "MxVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameEffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EFFECT_EXTREME_ZOOM:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

.field public static final enum EFFECT_MIRROR:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

.field public static final enum EFFECT_NORMAL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

.field public static final enum EFFECT_STRIPS:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

.field private static final synthetic d:[Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;


# instance fields
.field a:[Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x3

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 87
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    const-string v1, "EFFECT_NORMAL"

    new-array v3, v8, [[F

    sget-object v4, Lcom/muvee/dsg/mmap/api/videorecord/MatrixConstants;->TRIANGLE_VERTICES_DATA_DEFAULT:[F

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v7, v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;-><init>(Ljava/lang/String;I[[F)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->EFFECT_NORMAL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    .line 88
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    const-string v1, "EFFECT_MIRROR"

    new-array v3, v8, [[F

    sget-object v4, Lcom/muvee/dsg/mmap/api/videorecord/MatrixConstants;->TRIANGLE_VERTICES_DATA_MIRRO:[F

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v8, v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;-><init>(Ljava/lang/String;I[[F)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->EFFECT_MIRROR:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    .line 89
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    const-string v1, "EFFECT_EXTREME_ZOOM"

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "\t\t\t#extension GL_OES_EGL_image_external : require\n\t\t\tprecision mediump float;\n\t\t\tuniform samplerExternalOES\tuSampler2d;\n\t\t\tvarying vec2\t\t\tvTextureCoord;\n\t\t\tvoid main (void)\n\t\t\t{\n\t\t\t\tlowp vec4 color = texture2D(uSampler2d, vTextureCoord);\n\t\t\t\tfloat rCol = color.r;\n\t\t\t\tfloat gCol = color.g;\n\t\t\t\tfloat bCol = color.b;\n\t\t\t\tlowp float alphaNew = color.a * 0.3;\n\t\t\t\tgl_FragColor = vec4(rCol,gCol,bCol, alphaNew);\n\t\t\t}"

    aput-object v4, v3, v7

    aput-object v6, v3, v8

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v5, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    aput-object v5, v4, v7

    aput-object v6, v4, v8

    new-array v5, v2, [[F

    sget-object v6, Lcom/muvee/dsg/mmap/api/videorecord/MatrixConstants;->TRIANGLE_VERTICES_DATA_ZOOM_200:[F

    aput-object v6, v5, v7

    sget-object v6, Lcom/muvee/dsg/mmap/api/videorecord/MatrixConstants;->TRIANGLE_VERTICES_DATA_ZOOM_80:[F

    aput-object v6, v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[[F)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->EFFECT_EXTREME_ZOOM:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    .line 104
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    const-string v1, "EFFECT_STRIPS"

    new-array v3, v9, [[F

    sget-object v4, Lcom/muvee/dsg/mmap/api/videorecord/MatrixConstants;->TRIANGLE_VERTICES_DATA_DEFAULT:[F

    aput-object v4, v3, v7

    sget-object v4, Lcom/muvee/dsg/mmap/api/videorecord/MatrixConstants;->TRIANGLE_VERTICES_DATA_ZOOM_87_5:[F

    aput-object v4, v3, v8

    sget-object v4, Lcom/muvee/dsg/mmap/api/videorecord/MatrixConstants;->TRIANGLE_VERTICES_DATA_ZOOM_75:[F

    aput-object v4, v3, v2

    invoke-direct {v0, v1, v9, v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;-><init>(Ljava/lang/String;I[[F)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->EFFECT_STRIPS:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->EFFECT_NORMAL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->EFFECT_MIRROR:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->EFFECT_EXTREME_ZOOM:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->EFFECT_STRIPS:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->d:[Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[[F)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->a:[Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->b:[Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->c:[[F

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[F)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->c:[[F

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->d:[Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    return-object v0
.end method
