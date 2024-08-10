.class Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$1;
.super Ljava/lang/Object;
.source "TextureVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$1;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$1;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$1;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;->createSurface(Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$1;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$1;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
