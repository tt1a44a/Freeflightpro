.class Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$3;
.super Ljava/lang/Object;
.source "CameraSettingsHudView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;-><init>(Landroid/content/Context;ILcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 164
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 168
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->access$100(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->setImageExposition(F)V

    .line 173
    return-void
.end method
