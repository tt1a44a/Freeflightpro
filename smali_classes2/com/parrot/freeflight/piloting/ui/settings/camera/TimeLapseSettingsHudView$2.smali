.class Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$2;
.super Ljava/lang/Object;
.source "TimeLapseSettingsHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->initButtonsAndMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMediaRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->startMediaRecording()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/TimeLapseSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->stopMediaRecording()V

    goto :goto_0
.end method
