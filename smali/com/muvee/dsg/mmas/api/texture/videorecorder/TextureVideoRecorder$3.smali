.class Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$3;
.super Ljava/lang/Object;
.source "TextureVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->startRecording()V
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
    .line 113
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$3;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$3;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$3;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v2}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->d(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

    move-result-object v2

    iget-object v2, v2, Lcom/muvee/dsg/mmas/api/image2video/OutputParam;->file:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;Landroid/media/MediaMuxer;)Landroid/media/MediaMuxer;

    .line 117
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$3;->a:Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->e(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
