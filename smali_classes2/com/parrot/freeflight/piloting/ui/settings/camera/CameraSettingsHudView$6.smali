.class Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$6;
.super Ljava/lang/Object;
.source "CameraSettingsHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;->initButtonsAndMenus(Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

.field final synthetic val$cameraSettingsModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$6;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$6;->val$cameraSettingsModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$6;->val$cameraSettingsModeListener:Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/camera/CameraSettingsHudView$CameraSettingsModeListener;->onCameraSettingsModeChanged(I)V

    .line 208
    return-void
.end method
