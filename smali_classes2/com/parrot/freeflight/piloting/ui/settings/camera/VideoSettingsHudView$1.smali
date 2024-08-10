.class Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;
.super Ljava/lang/Object;
.source "VideoSettingsHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->initButtonsAndMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMediaRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->startMediaRecording()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/VideoSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->stopMediaRecording()V

    goto :goto_0
.end method
