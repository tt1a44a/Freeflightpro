.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$16;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->initButtonsOnClickListeners(Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;)V
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
    .line 777
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$16;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 781
    const-string v0, "PilotingHudView"

    const-string v1, "click on photo record button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$16;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$16;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->takePicture()V

    .line 785
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$16;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setEnabled(Z)V

    .line 786
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$16;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingPictureButtonView:Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setProcessing(Z)V

    .line 788
    :cond_0
    return-void
.end method
