.class Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;
.super Ljava/lang/Object;
.source "MediaCodecTextureEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

.field private b:Landroid/opengl/EGLDisplay;

.field private c:Landroid/opengl/EGLContext;

.field private d:Landroid/opengl/EGLSurface;

.field private e:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 700
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    .line 692
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->c:Landroid/opengl/EGLContext;

    .line 693
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->d:Landroid/opengl/EGLSurface;

    .line 701
    if-nez p2, :cond_0

    .line 702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 704
    :cond_0
    iput-object p2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->e:Landroid/view/Surface;

    .line 706
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->d()V

    .line 707
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 791
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 792
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

    .line 794
    :cond_0
    return-void
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 713
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    .line 714
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 715
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 718
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 724
    new-array v3, v8, [Landroid/opengl/EGLConfig;

    .line 725
    new-array v6, v8, [I

    .line 726
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 727
    const-string v0, "eglCreateContext RGB888+recordable ES2"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->a(Ljava/lang/String;)V

    .line 730
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 731
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->c:Landroid/opengl/EGLContext;

    .line 732
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->a(Ljava/lang/String;)V

    .line 735
    new-array v0, v8, [I

    const/16 v1, 0x3038

    aput v1, v0, v2

    .line 736
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->e:Landroid/view/Surface;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->d:Landroid/opengl/EGLSurface;

    .line 737
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->a(Ljava/lang/String;)V

    .line 738
    return-void

    .line 723
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    .line 730
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 744
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 746
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->d:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 747
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 749
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->e:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 754
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    .line 755
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->c:Landroid/opengl/EGLContext;

    .line 756
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->d:Landroid/opengl/EGLSurface;

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->e:Landroid/view/Surface;

    .line 759
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 782
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->d:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 783
    const-string v0, "eglPresentationTimeANDROID"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->a(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 765
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->d:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->d:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 766
    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->a(Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->d:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 774
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->a(Ljava/lang/String;)V

    .line 775
    return v0
.end method
