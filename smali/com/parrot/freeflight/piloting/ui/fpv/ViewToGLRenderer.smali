.class public Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;
.super Lcom/parrot/controller/video/renderer/VideoGlRenderer;
.source "ViewToGLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$DefaultListener;,
        Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewToGLRenderer"


# instance fields
.field protected mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCreateSurfaceTexture:Z

.field private mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSurfaceCanvas:Landroid/graphics/Canvas;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTextureHeight:I

.field private mTextureWidth:I

.field protected final mTransformMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "createSurfaceTexture"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/parrot/controller/video/renderer/VideoGlRenderer;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mListener:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;

    .line 52
    iput-boolean p3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mCreateSurfaceTexture:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0601ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureWidth:I

    .line 56
    const v1, 0x7f0601ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureHeight:I

    .line 58
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTransformMatrix:[F

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized getGLSurfaceTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureWidth:I

    return v0
.end method

.method public getVideoTextureId()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->getId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initGlTexture()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->createAndInit(Landroid/content/res/Resources;I)Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureWidth:I

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->setWidth(I)V

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureHeight:I

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->setHeight(I)V

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mListener:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mListener:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;->onGlTextureReady(Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 140
    :cond_0
    return-void
.end method

.method public declared-synchronized initSurfaceTexture()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureWidth:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 148
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurface:Landroid/view/Surface;

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mListener:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mListener:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;->onSurfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDrawViewBegin()Landroid/graphics/Canvas;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceCanvas:Landroid/graphics/Canvas;

    .line 95
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 97
    :try_start_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceCanvas:Landroid/graphics/Canvas;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceCanvas:Landroid/graphics/Canvas;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ViewToGLRenderer"

    const-string v2, "Error locking Canvas for gl rendering."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDrawViewEnd()V
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mListener:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mListener:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;

    invoke-interface {v0, p2, p3}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;->onSurfaceChanged(II)V

    .line 76
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->initGlTexture()V

    .line 65
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mCreateSurfaceTexture:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->initSurfaceTexture()V

    .line 68
    :cond_0
    return-void
.end method

.method public declared-synchronized releaseSurfaceTexture()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurface:Landroid/view/Surface;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->deleteGLResources()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_2
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/parrot/controller/video/renderer/VideoGlRenderer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 160
    if-eqz p1, :cond_0

    .line 161
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSurfaceTextureSize(II)V
    .locals 3
    .param p1, "textureWidth"    # I
    .param p2, "textureHeight"    # I

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureWidth:I

    .line 122
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureHeight:I

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mGlSurfaceTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureWidth:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->setSize(II)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureWidth:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->mTextureHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
