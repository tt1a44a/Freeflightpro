.class public Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;
.super Ljava/lang/Object;
.source "MediaCodecTextureDecoder.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecOutputSurface"
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Landroid/view/Surface;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a()V

    .line 648
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 655
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    .line 656
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;)V

    .line 657
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;->c()V

    .line 658
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;->e()V

    .line 660
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "textureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    .line 674
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 675
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->c:Landroid/view/Surface;

    .line 677
    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 712
    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->d:Z

    if-nez v2, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->d:Z

    .line 717
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;->b()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    .line 718
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a()Ljava/lang/String;

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

    .line 720
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    .line 721
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v3, v4, :cond_2

    .line 722
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "awaitNewImage no display!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_2
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    .line 726
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 727
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "awaitNewImage no context!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_1
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    const-string v3, "before updateTexImage"

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;->a(Ljava/lang/String;)V

    .line 733
    if-ne v0, v1, :cond_0

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception Occured on update tex Image, Your Screen Image may not be accurate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 729
    goto :goto_1
.end method

.method public drawImage(Z)V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;->a(Landroid/graphics/SurfaceTexture;Z)V

    .line 751
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->c:Landroid/view/Surface;

    return-object v0
.end method

.method public getTextureID()I
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;->a()I

    move-result v0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 756
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new frame available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->d:Z

    .line 758
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 684
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->c:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 685
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;->d()V

    .line 687
    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;

    .line 688
    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->c:Landroid/view/Surface;

    .line 689
    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    .line 690
    return-void
.end method
