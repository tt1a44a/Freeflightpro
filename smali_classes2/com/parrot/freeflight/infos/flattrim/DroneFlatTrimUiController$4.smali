.class Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$4;
.super Ljava/lang/Object;
.source "DroneFlatTrimUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$4;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecoderStateChange(Z)V
    .locals 3
    .param p1, "ready"    # Z

    .prologue
    .line 169
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDecoderStateChange ready="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDeviceConnectorState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$4;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-static {v2}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->access$300(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$4;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->access$300(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$4;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->access$400(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$4;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->access$500(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V

    goto :goto_0
.end method
