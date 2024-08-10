.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$25;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/core/video/VideoStreamingController$VideoStreamingControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$25;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecoderStateChange(Z)V
    .locals 3
    .param p1, "ready"    # Z

    .prologue
    .line 1876
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDecoderStateChange ready="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$25;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v2, v2, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$25;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$25;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$25;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingController:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$25;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mVideoStreamingView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->registerView(Landroid/view/View;)V

    .line 1882
    :cond_0
    return-void
.end method
