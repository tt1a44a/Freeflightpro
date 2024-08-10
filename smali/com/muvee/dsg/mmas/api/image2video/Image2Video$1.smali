.class Lcom/muvee/dsg/mmas/api/image2video/Image2Video$1;
.super Ljava/lang/Object;
.source "Image2Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->start(Lcom/muvee/dsg/mmas/api/image2video/OutputParam;Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$1;->a:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$1;->a:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->a(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)V

    .line 39
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$1;->a:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->c(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$1;->a:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->b(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    move-result-object v1

    const-string v2, "Image2Video.GL_THREAD"

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->setEglSetup(Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/image2video/Image2Video$1;->a:Lcom/muvee/dsg/mmas/api/image2video/Image2Video;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/image2video/Image2Video;->c(Lcom/muvee/dsg/mmas/api/image2video/Image2Video;)Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->startRecording()V

    .line 41
    return-void
.end method
