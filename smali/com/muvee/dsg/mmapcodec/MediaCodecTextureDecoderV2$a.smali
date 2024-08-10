.class Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;
.super Ljava/lang/Object;
.source "MediaCodecTextureDecoderV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljavax/microedition/khronos/egl/EGL10;

.field private c:[F

.field private d:I

.field private e:I

.field private f:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private g:Ljavax/microedition/khronos/egl/EGLContext;

.field private h:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->a:I

    .line 789
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->c:[F

    .line 791
    const/16 v0, 0x780

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->d:I

    .line 792
    const/16 v0, 0x440

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->e:I

    .line 799
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 800
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;)V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 928
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 929
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 931
    :cond_0
    return-void
.end method

.method private f()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 814
    .line 817
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 818
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 819
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_0
    new-array v0, v8, [I

    .line 822
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 824
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_1
    const/16 v0, 0xd

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 830
    new-array v3, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 831
    new-array v5, v7, [I

    .line 832
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    array-length v4, v3

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 833
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_2
    new-array v0, v9, [I

    fill-array-data v0, :array_1

    .line 838
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v6

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->g:Ljavax/microedition/khronos/egl/EGLContext;

    .line 839
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->g:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_3

    .line 841
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_3
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    aput v1, v0, v6

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->d:I

    aput v1, v0, v7

    const/16 v1, 0x3056

    aput v1, v0, v8

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->e:I

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 846
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v3, v6

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 847
    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_4

    .line 849
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_4
    return-void

    .line 828
    nop

    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3021
        0x0
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 837
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->a:I

    return v0
.end method

.method public a(Landroid/graphics/SurfaceTexture;Z)V
    .locals 4

    .prologue
    const/16 v3, 0xd

    const/4 v2, 0x5

    .line 883
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->c:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 885
    if-eqz p2, :cond_0

    .line 886
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->c:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->c:[F

    aget v1, v1, v2

    neg-float v1, v1

    aput v1, v0, v2

    .line 887
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->c:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->c:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 889
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 917
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 921
    :cond_0
    return-void
.end method

.method public b()Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 857
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 869
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 870
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 871
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->f:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->h:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public e()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 895
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTexture mEGL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 899
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::createTexture:iDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 901
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL10 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 905
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_1

    .line 906
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL10 context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :cond_1
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::createTexture:iContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-array v0, v5, [I

    .line 910
    invoke-static {v5, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 911
    aget v0, v0, v4

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->a:I

    .line 912
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTexture mTextureID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method
