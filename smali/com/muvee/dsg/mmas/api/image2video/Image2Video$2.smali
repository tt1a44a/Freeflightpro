.class Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;
.super Ljava/lang/Object;
.source "Image2Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->addBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;

.field final synthetic c:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;Landroid/graphics/Bitmap;Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->c:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->b:Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 70
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->c:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->c:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->d(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)J

    move-result-wide v2

    const v1, 0x3b9aca00

    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->c:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v4}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->e(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

    move-result-object v4

    iget v4, v4, Lcom/muvee/dsg/mmas/api/image2video/OutputParam;->fps:I

    div-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->a(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;J)J

    .line 71
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->c:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->c(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->c:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->d(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->beforeDrawFrame(J)V

    .line 72
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->c:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->f(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;->clearFrame()V

    .line 73
    new-instance v0, Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;->create(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->c:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->f(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;

    move-result-object v1

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;->getTextureInfo()Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/muvee/dsg/mmas/api/texture/util/TextureRender;->drawFrame(Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;Lcom/muvee/dsg/mmas/api/texture/util/TextureRender$DrawFrameHandler;F)V

    .line 76
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->c:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->c(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->afterDrawFrame()V

    .line 77
    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;->release()V

    .line 78
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->b:Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->b:Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;->a(Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;Z)Z

    .line 80
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$2;->b:Lcom/muvee/dsg/mmas/api/image2video/Image2Video$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
