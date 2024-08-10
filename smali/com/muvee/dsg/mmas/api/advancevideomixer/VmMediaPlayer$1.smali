.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;
.super Ljava/lang/Object;
.source "VmMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/CodecOutputSurface;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 416
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;Z)Z

    .line 420
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 421
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$VmOnFrameAvailableListener;->OnFrameAvailable(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Z

    move-result v0

    move v1, v0

    .line 432
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->c(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 433
    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->d(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->makeCurrent(Ljava/lang/Object;)V

    .line 434
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 435
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 437
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v4, v3

    .line 439
    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->clearFrame()V

    .line 440
    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    move-result-object v4

    .line 441
    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->i(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    move-result-object v5

    new-instance v6, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;

    invoke-direct {v6, p0, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;F)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v6, v7}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->drawFrame(Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;F)V

    .line 556
    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v4

    iget-object v4, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 558
    new-instance v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;

    invoke-direct {v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;-><init>()V

    .line 559
    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v5

    iget-object v5, v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;->create(Landroid/graphics/Bitmap;)V

    .line 561
    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v5

    iget-object v5, v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v6}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v6

    iget-object v6, v6, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 563
    iget-object v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v6}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->j(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;

    move-result-object v6

    invoke-virtual {v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;->getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    move-result-object v4

    new-instance v7, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$2;

    invoke-direct {v7, p0, v3, v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$2;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;FF)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v6, v4, v7, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->drawFrame(Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;F)V

    .line 586
    :cond_1
    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->d(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->swapBuffers(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 610
    :catch_0
    move-exception v0

    .line 611
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 612
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    move-result-object v1

    monitor-enter v1

    .line 613
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 614
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 615
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    move-result-object v1

    monitor-enter v1

    .line 616
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-ne v0, v2, :cond_2

    .line 617
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    move-result-object v0

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    iput-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    .line 619
    :cond_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 592
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 594
    if-eqz v1, :cond_4

    .line 595
    :try_start_4
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->k(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$RenderLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 598
    :cond_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 603
    :try_start_5
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    move-result-object v1

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 604
    :try_start_6
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    if-ne v0, v2, :cond_5

    .line 605
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->l(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;

    move-result-object v0

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;->SEEKED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    iput-object v2, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$State$StateState;

    .line 608
    :cond_5
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 598
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 614
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :cond_6
    move v1, v0

    goto/16 :goto_1
.end method
