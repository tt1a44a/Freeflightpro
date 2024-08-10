.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$24;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enterCameraSettings()V
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
    .line 1496
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$24;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1499
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$24;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$24;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$1600(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$400(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;I)V

    .line 1500
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$24;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$24;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mCameraSettingsHudView:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->setEnabledBackButton(Z)V

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$24;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mRecordingView:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->setEnabledVideoSettingsView(Z)V

    .line 1504
    return-void
.end method
