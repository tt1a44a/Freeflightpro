.class public Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;
.super Ljava/lang/Object;
.source "MediaCodecTextureDecoderV2.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecOutputSurface"
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Landroid/view/Surface;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a()V

    .line 669
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 676
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    .line 677
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;)V

    .line 678
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->c()V

    .line 679
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->e()V

    .line 681
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "textureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    .line 695
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 696
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->c:Landroid/view/Surface;

    .line 698
    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 733
    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->d:Z

    if-nez v2, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->d:Z

    .line 738
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->b()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    .line 739
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "awaitNewImage get egl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    .line 742
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v3, v4, :cond_2

    .line 743
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "awaitNewImage no display!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_2
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    .line 747
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 748
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "awaitNewImage no context!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :goto_1
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    const-string v3, "before updateTexImage"

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->a(Ljava/lang/String;)V

    .line 754
    if-ne v0, v1, :cond_0

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    .line 759
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception Occured on update tex Image, Your Screen Image may not be accurate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 750
    goto :goto_1
.end method

.method public drawImage(Z)V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->a(Landroid/graphics/SurfaceTexture;Z)V

    .line 772
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->c:Landroid/view/Surface;

    return-object v0
.end method

.method public getTextureID()I
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->a()I

    move-result v0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 777
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new frame available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->d:Z

    .line 779
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 705
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->c:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 706
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;->d()V

    .line 708
    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;

    .line 709
    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->c:Landroid/view/Surface;

    .line 710
    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    .line 711
    return-void
.end method
