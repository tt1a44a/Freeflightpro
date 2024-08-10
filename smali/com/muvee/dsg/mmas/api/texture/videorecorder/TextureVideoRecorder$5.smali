.class Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;
.super Ljava/lang/Object;
.source "TextureVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->stopRecording()V
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
    .line 139
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;->destroySurface(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v0, v3}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;Landroid/view/Surface;)Landroid/view/Surface;

    .line 143
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;->makeCurrent()V

    .line 144
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->g(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 145
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->h(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-virtual {v0, v3, v2, v2}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->addAudioFrame([BII)V

    .line 148
    :cond_0
    return-void
.end method
