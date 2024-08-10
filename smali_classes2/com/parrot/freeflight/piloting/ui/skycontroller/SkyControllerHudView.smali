.class public abstract Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;
.super Lcom/parrot/freeflight/piloting/ui/PilotingHudView;
.source "SkyControllerHudView.java"


# instance fields
.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3, "rootView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "videoStreamingController"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "settingsButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12, "switchFpvButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13, "launchMode"    # I

    .prologue
    .line 36
    invoke-direct/range {p0 .. p13}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;I)V

    .line 69
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 39
    new-instance v0, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    .line 40
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->updatePresetMode(I)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;)Lcom/parrot/freeflight/piloting/preference/PresetModePreference;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;)Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mTelemetryUiController:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    return-object v0
.end method


# virtual methods
.method protected abstract changeJoystickVisibility(Z)V
.end method

.method protected created()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 56
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->destroy()V

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mPresetModePreference:Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/skycontroller/SkyControllerHudView;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 65
    :cond_0
    return-void
.end method
