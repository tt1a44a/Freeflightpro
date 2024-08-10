.class public Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;
.super Ljava/lang/Object;
.source "EGLSetup.java"


# instance fields
.field a:I

.field b:I

.field private c:Landroid/opengl/EGLDisplay;

.field private d:Landroid/opengl/EGLContext;

.field private e:Landroid/opengl/EGLSurface;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Landroid/opengl/EGLSurface;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Landroid/opengl/EGLConfig;


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    .line 24
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->d:Landroid/opengl/EGLContext;

    .line 25
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->e:Landroid/opengl/EGLSurface;

    .line 27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->f:Ljava/util/Map;

    .line 40
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    .line 41
    const-string v3, "com.muvee.dsg.mmas.api.advancevideomixer.EGLSetup"

    const-string v4, "::EGLSetup: eglGetCurrentContext=%s,%b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v6, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v0, :cond_1

    .line 45
    :cond_1
    if-lez p1, :cond_2

    if-gtz p2, :cond_3

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 48
    :cond_3
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->a:I

    .line 49
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->b:I

    .line 51
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->a()V

    .line 52
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->makeCurrent()V

    .line 53
    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    .line 60
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-array v0, v9, [I

    .line 64
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 92
    new-array v0, v8, [Landroid/opengl/EGLConfig;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->g:[Landroid/opengl/EGLConfig;

    .line 93
    new-array v6, v8, [I

    .line 94
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->g:[Landroid/opengl/EGLConfig;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->g:[Landroid/opengl/EGLConfig;

    array-length v5, v4

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    new-array v0, v10, [I

    fill-array-data v0, :array_1

    .line 104
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->g:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v2

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->d:Landroid/opengl/EGLContext;

    .line 106
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->d:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    aput v1, v0, v2

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->a:I

    aput v1, v0, v8

    const/16 v1, 0x3056

    aput v1, v0, v9

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->b:I

    aput v1, v0, v10

    const/4 v1, 0x4

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 116
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->g:[Landroid/opengl/EGLConfig;

    aget-object v3, v3, v2

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->e:Landroid/opengl/EGLSurface;

    .line 117
    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->a(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->e:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_4
    return-void

    .line 70
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

    .line 100
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
    .line 221
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 222
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

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public createSurface(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v0, 0x3038

    aput v0, v1, v3

    .line 189
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/EGLSurface;

    .line 190
    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->g:[Landroid/opengl/EGLConfig;

    aget-object v2, v2, v3

    invoke-static {v0, v2, p1, v1, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 192
    const-string v1, "eglCreateWindowSurface"

    invoke-direct {p0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->a(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    return-void
.end method

.method public destroySurface(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/EGLSurface;

    .line 150
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 152
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    return-void
.end method

.method public makeCurrent()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->e:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->e:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->d:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method

.method public makeCurrent(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/EGLSurface;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->d:Landroid/opengl/EGLContext;

    invoke-static {v1, v0, v0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->e:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 130
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/EGLSurface;

    .line 131
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->d:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 136
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 138
    :cond_1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    .line 139
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->d:Landroid/opengl/EGLContext;

    .line 140
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->e:Landroid/opengl/EGLSurface;

    .line 142
    return-void
.end method

.method public setPresentationTime(JLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->f:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/EGLSurface;

    .line 231
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 233
    const-string v0, "eglPresentationTimeANDROID"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->a(Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method

.method public swapBuffers(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/EGLSurface;

    .line 171
    if-eqz v0, :cond_0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->c:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 173
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->a(Ljava/lang/String;)V

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
