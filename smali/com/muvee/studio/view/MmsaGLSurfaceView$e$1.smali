.class Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;
.super Ljava/lang/Object;
.source "MmsaGLSurfaceView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a(Ljava/lang/Object;)Ljavax/microedition/khronos/opengles/GL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;


# direct methods
.method constructor <init>(Lcom/muvee/studio/view/MmsaGLSurfaceView$e;I)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    iput p2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 600
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::onFrameAvailable: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    iget-object v0, v0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->a:I

    aget-object v1, v0, v1

    monitor-enter v1

    .line 602
    :try_start_0
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "::onFrameAvailable: + %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    iget-object v5, v5, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    iget-object v5, v5, Lcom/muvee/studio/view/MmsaGLSurfaceView;->mSurfaceFrameCount:[J

    iget v6, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->a:I

    aget-wide v6, v5, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    iget-object v0, v0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    iget-object v0, v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->mSurfaceFrameCount:[J

    iget v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->a:I

    aget-wide v4, v0, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    aput-wide v4, v0, v2

    .line 604
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    iget-object v0, v0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->a:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 605
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "::onFrameAvailable: - %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView$e;

    iget-object v5, v5, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    iget-object v5, v5, Lcom/muvee/studio/view/MmsaGLSurfaceView;->mSurfaceFrameCount:[J

    iget v6, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;->a:I

    aget-wide v6, v5, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    monitor-exit v1

    .line 608
    return-void

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
