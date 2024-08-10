.class Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;
.super Ljava/lang/Object;
.source "VideoFrameGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 415
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    move-result-object v1

    monitor-enter v1

    .line 417
    :try_start_0
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onFrameAvailable::run:"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 420
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->f(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->g(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 423
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->h(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I

    move-result v0

    if-lez v0, :cond_1

    .line 424
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;

    invoke-direct {v0, p0, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;F)V

    .line 538
    :goto_0
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->m(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->a:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->l(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/CodecOutputSurface;->getTextureId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->drawFrame(Landroid/graphics/SurfaceTexture;ILcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender$DrawFrameHandler;)V

    .line 539
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->n(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;->readFrame()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 541
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->o(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 542
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;-><init>()V

    .line 543
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    move-result-object v3

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;->outTimeStampUs:J

    .line 544
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    move-result-object v3

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;->inTimeStampMs:J

    .line 545
    iput-object v0, v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;->outBuffer:Ljava/nio/ByteBuffer;

    .line 546
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->n(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;->getWidth()I

    move-result v0

    iput v0, v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;->outWidth:I

    .line 547
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->n(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameReader;->getHeight()I

    move-result v0

    iput v0, v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;->outHeight:I

    .line 548
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->o(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;->onFrameAvailable(Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;)V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->e(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 552
    monitor-exit v1

    .line 553
    return-void

    .line 503
    :cond_1
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$2;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$2;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;)V

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
