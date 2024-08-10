.class public final enum Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;
.super Ljava/lang/Enum;
.source "FrameEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BGRA:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

.field public static final enum RGBA:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

.field private static final synthetic b:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    const-string v1, "RGBA"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->RGBA:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    .line 34
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    const-string v1, "BGRA"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    lowp vec4 color = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = vec4(color.b,color.g,color.r, color.a);\n}\n"

    invoke-direct {v0, v1, v4, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->BGRA:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->RGBA:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->BGRA:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->b:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->b:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    return-object v0
.end method
