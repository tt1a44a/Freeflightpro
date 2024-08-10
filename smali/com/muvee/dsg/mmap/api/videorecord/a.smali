.class Lcom/muvee/dsg/mmap/api/videorecord/a;
.super Ljava/lang/Object;
.source "CodecInputSurface.java"


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLContext;

.field private c:[Landroid/opengl/EGLSurface;

.field private d:[Ljava/lang/Object;

.field private e:[Landroid/opengl/EGLConfig;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    .line 31
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->b:Landroid/opengl/EGLContext;

    .line 34
    new-array v0, v4, [Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    .line 38
    new-array v0, v4, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->d:[Ljava/lang/Object;

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->d:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 51
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/a;->b()V

    .line 52
    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    .line 59
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 63
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 72
    new-array v0, v8, [Landroid/opengl/EGLConfig;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->e:[Landroid/opengl/EGLConfig;

    .line 73
    new-array v6, v8, [I

    .line 74
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->e:[Landroid/opengl/EGLConfig;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->e:[Landroid/opengl/EGLConfig;

    array-length v5, v4

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 79
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->e:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v2

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->b:Landroid/opengl/EGLContext;

    .line 83
    new-array v0, v8, [I

    const/16 v1, 0x3038

    aput v1, v0, v2

    .line 84
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->e:[Landroid/opengl/EGLConfig;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->d:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-static {v3, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    aput-object v0, v1, v2

    .line 91
    return-void

    .line 70
    nop

    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 113
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 114
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 115
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 117
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 122
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    .line 123
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->b:Landroid/opengl/EGLContext;

    .line 124
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    aput-object v1, v0, v4

    .line 125
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    aput-object v1, v0, v5

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->d:[Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 104
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    aput-object v1, v0, p1

    .line 105
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    aput v1, v0, v5

    .line 97
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->d:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 98
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->e:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->d:[Ljava/lang/Object;

    aget-object v4, v4, p1

    invoke-static {v2, v3, v4, v0, v5}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    aput-object v0, v1, p1

    .line 100
    return-void
.end method

.method public a(JI)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    aget-object v0, v0, p3

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    aget-object v1, v1, p3

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 164
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    aget-object v0, v0, p1

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 141
    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    aget-object v0, v0, p1

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/a;->c:[Landroid/opengl/EGLSurface;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
