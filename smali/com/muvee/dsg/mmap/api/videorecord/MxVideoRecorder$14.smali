.class Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;
.super Ljava/lang/Object;
.source "MxVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->o(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 1014
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->p(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1016
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->q(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->q(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->p(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;->onSurfaceTextureInitilized(Landroid/graphics/SurfaceTexture;)V

    .line 1019
    :cond_0
    return-void
.end method
