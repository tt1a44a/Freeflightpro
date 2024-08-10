.class Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$1;
.super Ljava/lang/Object;
.source "SkyControllerHudView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "preset_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->access$100(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;)Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->access$000(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;)Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updatePresetMode(I)V

    .line 46
    :cond_0
    return-void
.end method
