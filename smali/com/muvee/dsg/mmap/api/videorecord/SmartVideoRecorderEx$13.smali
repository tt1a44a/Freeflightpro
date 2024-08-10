.class Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;
.super Ljava/lang/Object;
.source "SmartVideoRecorderEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 839
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->o(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 840
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->p(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 842
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->p(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;->onSurfaceTextureInitilized(Landroid/graphics/SurfaceTexture;)V

    .line 845
    :cond_0
    return-void
.end method
