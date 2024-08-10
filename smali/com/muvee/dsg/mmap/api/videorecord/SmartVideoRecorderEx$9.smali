.class Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;
.super Ljava/lang/Object;
.source "SmartVideoRecorderEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 443
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

    .line 444
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->c(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->c(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->c(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    move-result-object v1

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 448
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->d(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/muvee/dsg/mmap/api/videorecord/a;->b(I)V

    .line 449
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->d(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/a;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v1

    iget-wide v6, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->a:J

    invoke-virtual {v0, v6, v7, v4}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(JI)V

    .line 450
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->f(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/e;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->b:[I

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v5

    iget v5, v5, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->b:I

    aget v3, v3, v5

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->e:Landroid/graphics/RectF;

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/e;->a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V

    .line 453
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v4

    .line 456
    :goto_0
    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->deleteTexTexture()V

    .line 462
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 466
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->renderParamMap:Lcom/muvee/dsg/text/TextRenderParamMap;

    const-string v1, "key.text"

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/muvee/dsg/text/TextRenderParamMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/text/TextRenderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->renderParamMap:Lcom/muvee/dsg/text/TextRenderParamMap;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/TextRenderHelper;->setRenderParam(Ljava/util/Map;)V

    .line 469
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/text/TextRenderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->j(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/TextRenderHelper;->draw(Landroid/graphics/Canvas;)V

    .line 471
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->setupTextRenderToTexture(Landroid/graphics/Bitmap;)V

    .line 473
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->k(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/d;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->c:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/d;->a(I)V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->d(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/muvee/dsg/mmap/api/videorecord/a;->c(I)Z

    .line 486
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->b:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    move-result-object v1

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->b:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->giveBackOffset(I)V

    .line 489
    :cond_2
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 491
    monitor-exit v1

    .line 494
    return-void

    :cond_3
    move v0, v2

    .line 453
    goto/16 :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
