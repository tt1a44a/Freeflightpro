.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;
.super Ljava/lang/Object;
.source "EGLSetup.java"


# instance fields
.field a:I

.field b:I

.field private c:Landroid/opengl/EGLDisplay;

.field private d:Landroid/opengl/EGLContext;

.field private e:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    .line 17
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->d:Landroid/opengl/EGLContext;

    .line 18
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->e:Landroid/opengl/EGLSurface;

    .line 29
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 32
    :cond_1
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->a:I

    .line 33
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->b:I

    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->a()V

    .line 36
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->makeCurrent()V

    .line 37
    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    .line 44
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    new-array v0, v9, [I

    .line 48
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 63
    new-array v3, v8, [Landroid/opengl/EGLConfig;

    .line 64
    new-array v6, v8, [I

    .line 65
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    new-array v0, v10, [I

    fill-array-data v0, :array_1

    .line 75
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->d:Landroid/opengl/EGLContext;

    .line 77
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->a(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->d:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    aput v1, v0, v2

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->a:I

    aput v1, v0, v8

    const/16 v1, 0x3056

    aput v1, v0, v9

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->b:I

    aput v1, v0, v10

    const/4 v1, 0x4

    const/16 v4, 0x3038

    aput v4, v0, v1

    .line 87
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    aget-object v3, v3, v2

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->e:Landroid/opengl/EGLSurface;

    .line 88
    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->a(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->e:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_4
    return-void

    .line 54
    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 71
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 125
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

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public makeCurrent()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->e:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->e:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->d:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->e:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 100
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->d:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 102
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 104
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    .line 105
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->d:Landroid/opengl/EGLContext;

    .line 106
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/EGLSetup;->e:Landroid/opengl/EGLSurface;

    .line 108
    return-void
.end method
