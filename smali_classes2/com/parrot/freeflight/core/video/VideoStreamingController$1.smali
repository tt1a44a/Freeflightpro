.class Lcom/parrot/freeflight/core/video/VideoStreamingController$1;
.super Ljava/lang/Object;
.source "VideoStreamingController.java"

# interfaces
.implements Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/video/VideoStreamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoDecodingStarted()V
    .locals 4

    .prologue
    .line 89
    const-string v1, "debug_stream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoDecodingStarted() mVideoView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v3}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/video/VideoStreamingController$1$1;-><init>(Lcom/parrot/freeflight/core/video/VideoStreamingController$1;)V

    .line 98
    .local v0, "linkRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$000(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public videoDecodingStopped()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    const-string v0, "debug_stream"

    const-string v1, "videoDecodingStopped()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$200(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$202(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;)Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$300(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "debug_stream"

    const-string v1, "unlink linker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$300(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;->unlink()V

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$302(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;)Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$400(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$500(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$600(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "debug_stream"

    const-string v1, "restart decoding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$402(Lcom/parrot/freeflight/core/video/VideoStreamingController;Z)Z

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$600(Lcom/parrot/freeflight/core/video/VideoStreamingController;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$700(Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/controller/devicecontrollers/DeviceController;Z)V

    .line 125
    :cond_2
    return-void
.end method
