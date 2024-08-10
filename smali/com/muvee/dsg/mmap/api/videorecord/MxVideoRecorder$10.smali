.class Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;
.super Ljava/lang/Object;
.source "MxVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 521
    const-string v0, "com.muvee.dsg.mmap.api.videorecord.SmartVideoRecorderEx"

    const-string v1, "::run: saving %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->c(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->c(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->c(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    move-result-object v1

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 526
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->d(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/muvee/dsg/mmap/api/videorecord/a;->b(I)V

    .line 527
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->d(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/a;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v1

    iget-wide v6, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->a:J

    invoke-virtual {v0, v6, v7, v4}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(JI)V

    .line 528
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/e;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->b(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->b:[I

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v5

    iget v5, v5, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->b:I

    aget v3, v3, v5

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->e:Landroid/graphics/RectF;

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/e;->a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V

    .line 531
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;->b(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v4

    .line 534
    :goto_0
    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->b(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->deleteTexTexture()V

    .line 540
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->h(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 544
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;->renderParamMap:Lcom/muvee/dsg/text/TextRenderParamMap;

    const-string v1, "key.text"

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;->b(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/muvee/dsg/text/TextRenderParamMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/text/TextRenderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;->renderParamMap:Lcom/muvee/dsg/text/TextRenderParamMap;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/TextRenderHelper;->setRenderParam(Ljava/util/Map;)V

    .line 547
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/text/TextRenderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/TextRenderHelper;->draw(Landroid/graphics/Canvas;)V

    .line 549
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->b(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->h(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->setupTextRenderToTexture(Landroid/graphics/Bitmap;)V

    .line 551
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/d;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->b(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->c:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/d;->a(I)V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->d(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/muvee/dsg/mmap/api/videorecord/a;->c(I)Z

    .line 564
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->b(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    move-result-object v1

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->b:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->giveBackOffset(I)V

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 569
    monitor-exit v1

    .line 572
    return-void

    :cond_3
    move v0, v2

    .line 531
    goto/16 :goto_0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
