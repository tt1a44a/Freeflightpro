.class Lcom/muvee/uhd2hd/b;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLContext;

.field private c:Landroid/opengl/EGLSurface;

.field private d:Landroid/graphics/SurfaceTexture;

.field private e:Landroid/view/Surface;

.field private f:Ljava/lang/Object;

.field private g:Z

.field private h:Lcom/muvee/uhd2hd/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/uhd2hd/b;->a:Landroid/opengl/EGLDisplay;

    .line 17
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/uhd2hd/b;->b:Landroid/opengl/EGLContext;

    .line 18
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/muvee/uhd2hd/b;->c:Landroid/opengl/EGLSurface;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/muvee/uhd2hd/b;->f:Ljava/lang/Object;

    .line 40
    invoke-direct {p0}, Lcom/muvee/uhd2hd/b;->e()V

    .line 41
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/muvee/uhd2hd/c;

    invoke-direct {v0}, Lcom/muvee/uhd2hd/c;-><init>()V

    iput-object v0, p0, Lcom/muvee/uhd2hd/b;->h:Lcom/muvee/uhd2hd/c;

    .line 45
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->h:Lcom/muvee/uhd2hd/c;

    invoke-virtual {v0}, Lcom/muvee/uhd2hd/c;->b()V

    .line 48
    const-string v0, "OutputSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "textureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/uhd2hd/b;->h:Lcom/muvee/uhd2hd/c;

    invoke-virtual {v2}, Lcom/muvee/uhd2hd/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/muvee/uhd2hd/b;->h:Lcom/muvee/uhd2hd/c;

    invoke-virtual {v1}, Lcom/muvee/uhd2hd/c;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/b;->d:Landroid/graphics/SurfaceTexture;

    .line 50
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 52
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/muvee/uhd2hd/b;->d:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/b;->e:Landroid/view/Surface;

    .line 53
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/uhd2hd/b;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 100
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/uhd2hd/b;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 101
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 102
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->e:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 107
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/uhd2hd/b;->a:Landroid/opengl/EGLDisplay;

    .line 108
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/uhd2hd/b;->b:Landroid/opengl/EGLContext;

    .line 109
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/muvee/uhd2hd/b;->c:Landroid/opengl/EGLSurface;

    .line 111
    iput-object v2, p0, Lcom/muvee/uhd2hd/b;->h:Lcom/muvee/uhd2hd/c;

    .line 112
    iput-object v2, p0, Lcom/muvee/uhd2hd/b;->e:Landroid/view/Surface;

    .line 113
    iput-object v2, p0, Lcom/muvee/uhd2hd/b;->d:Landroid/graphics/SurfaceTexture;

    .line 114
    return-void
.end method

.method public b()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->e:Landroid/view/Surface;

    return-object v0
.end method

.method public c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 132
    .line 134
    iget-object v1, p0, Lcom/muvee/uhd2hd/b;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/muvee/uhd2hd/b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 137
    :try_start_1
    iget-object v2, p0, Lcom/muvee/uhd2hd/b;->f:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 138
    iget-boolean v2, p0, Lcom/muvee/uhd2hd/b;->g:Z

    if-nez v2, :cond_0

    .line 139
    const-string v2, "OutputSurface"

    const-string v3, "Surface frame wait timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    monitor-exit v1

    .line 152
    :goto_0
    return v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v2, "OutputSurface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "awaitNewImage Interrupted  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 147
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/muvee/uhd2hd/b;->g:Z

    .line 148
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->h:Lcom/muvee/uhd2hd/c;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lcom/muvee/uhd2hd/c;->a(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->h:Lcom/muvee/uhd2hd/c;

    iget-object v1, p0, Lcom/muvee/uhd2hd/b;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/muvee/uhd2hd/c;->a(Landroid/graphics/SurfaceTexture;)V

    .line 177
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/muvee/uhd2hd/b;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-boolean v0, p0, Lcom/muvee/uhd2hd/b;->g:Z

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 186
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/muvee/uhd2hd/b;->g:Z

    .line 187
    iget-object v0, p0, Lcom/muvee/uhd2hd/b;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 188
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    return-void
.end method
