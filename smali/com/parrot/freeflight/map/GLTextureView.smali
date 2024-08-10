.class public Lcom/parrot/freeflight/map/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;,
        Lcom/parrot/freeflight/map/GLTextureView$LogWriter;,
        Lcom/parrot/freeflight/map/GLTextureView$GLThread;,
        Lcom/parrot/freeflight/map/GLTextureView$EglHelper;,
        Lcom/parrot/freeflight/map/GLTextureView$SimpleEGLConfigChooser;,
        Lcom/parrot/freeflight/map/GLTextureView$ComponentSizeChooser;,
        Lcom/parrot/freeflight/map/GLTextureView$BaseConfigChooser;,
        Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;,
        Lcom/parrot/freeflight/map/GLTextureView$DefaultWindowSurfaceFactory;,
        Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;,
        Lcom/parrot/freeflight/map/GLTextureView$DefaultContextFactory;,
        Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;,
        Lcom/parrot/freeflight/map/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLTextureView"

.field private static final sGLThreadManager:Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

.field private mGLWrapper:Lcom/parrot/freeflight/map/GLTextureView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/map/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1685
    new-instance v0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;-><init>(Lcom/parrot/freeflight/map/GLTextureView$1;)V

    sput-object v0, Lcom/parrot/freeflight/map/GLTextureView;->sGLThreadManager:Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1687
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 79
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1687
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 88
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView;->init()V

    .line 89
    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/map/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/GLTextureView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/map/GLTextureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/GLTextureView;

    .prologue
    .line 28
    iget v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/GLTextureView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLConfigChooser:Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/GLTextureView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLContextFactory:Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/GLTextureView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$GLWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/GLTextureView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLWrapper:Lcom/parrot/freeflight/map/GLTextureView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/map/GLTextureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/GLTextureView;

    .prologue
    .line 28
    iget v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/parrot/freeflight/map/GLTextureView;->sGLThreadManager:Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/map/GLTextureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/GLTextureView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 1565
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1568
    :cond_0
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0, p0}, Lcom/parrot/freeflight/map/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public on(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->surfaceCreated()V

    .line 406
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 445
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 449
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v1, :cond_2

    .line 450
    const/4 v0, 0x1

    .line 451
    .local v0, "renderMode":I
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    .line 454
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    .line 455
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->setRenderMode(I)V

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->start()V

    .line 460
    .end local v0    # "renderMode":I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mDetached:Z

    .line 461
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->requestExitAndWait()V

    .line 476
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mDetached:Z

    .line 477
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 478
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->onPause()V

    .line 416
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->onResume()V

    .line 427
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 385
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->onWindowResize(II)V

    .line 387
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->surfaceCreated()V

    .line 376
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->surfaceDestroyed()V

    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->onWindowResize(II)V

    .line 381
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 398
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->requestRender()V

    .line 371
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mDebugFlags:I

    .line 136
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 296
    new-instance v0, Lcom/parrot/freeflight/map/GLTextureView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/map/GLTextureView$ComponentSizeChooser;-><init>(Lcom/parrot/freeflight/map/GLTextureView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/GLTextureView;->setEGLConfigChooser(Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;)V

    .line 298
    return-void
.end method

.method public setEGLConfigChooser(Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView;->checkRenderThreadState()V

    .line 260
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLConfigChooser:Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;

    .line 261
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 278
    new-instance v0, Lcom/parrot/freeflight/map/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/parrot/freeflight/map/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/parrot/freeflight/map/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/GLTextureView;->setEGLConfigChooser(Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;)V

    .line 279
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView;->checkRenderThreadState()V

    .line 328
    iput p1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLContextClientVersion:I

    .line 329
    return-void
.end method

.method public setEGLContextFactory(Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView;->checkRenderThreadState()V

    .line 229
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLContextFactory:Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;

    .line 230
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView;->checkRenderThreadState()V

    .line 243
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;

    .line 244
    return-void
.end method

.method public setGLWrapper(Lcom/parrot/freeflight/map/GLTextureView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/parrot/freeflight/map/GLTextureView$GLWrapper;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLWrapper:Lcom/parrot/freeflight/map/GLTextureView$GLWrapper;

    .line 123
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mPreserveEGLContextOnPause:Z

    .line 166
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->setRenderMode(I)V

    .line 349
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView;->checkRenderThreadState()V

    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLConfigChooser:Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/parrot/freeflight/map/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/map/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/parrot/freeflight/map/GLTextureView;Z)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLConfigChooser:Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLContextFactory:Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Lcom/parrot/freeflight/map/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/parrot/freeflight/map/GLTextureView$DefaultContextFactory;-><init>(Lcom/parrot/freeflight/map/GLTextureView;Lcom/parrot/freeflight/map/GLTextureView$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLContextFactory:Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 210
    new-instance v0, Lcom/parrot/freeflight/map/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/map/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lcom/parrot/freeflight/map/GLTextureView$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;

    .line 212
    :cond_2
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 213
    new-instance v0, Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView;->mGLThread:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->start()V

    .line 215
    return-void
.end method
