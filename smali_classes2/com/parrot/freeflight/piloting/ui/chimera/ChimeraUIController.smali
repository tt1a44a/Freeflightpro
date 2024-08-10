.class public Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;
.super Lcom/parrot/freeflight/piloting/ui/PilotingUIController;
.source "ChimeraUIController.java"


# instance fields
.field private final mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "chimeraModel"    # Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "activityWindow"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "permissionChecker"    # Lcom/parrot/freeflight/util/PermissionChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "locationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "videoStreamingController"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p13, "orientationChangeNeededListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p14, "onHudAccessDeniedListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p15, "fpvStatePreference"    # Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p16, "launchMode"    # I

    .prologue
    .line 49
    new-instance v12, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-object/from16 v2, p15

    invoke-direct {v12, v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v13, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    invoke-direct/range {v3 .. v16}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;I)V

    .line 53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0a03ec

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    .line 55
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mSettingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p10

    move-object/from16 v9, p15

    move-object/from16 v11, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v15, p16

    invoke-direct/range {v3 .. v15}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .line 59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->created()V

    .line 63
    return-void
.end method


# virtual methods
.method public showSettings(Landroid/view/View;I)V
    .locals 9
    .param p1, "settingsButton"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "category"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->showSettings(Landroid/view/View;I)V

    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-object v5, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->revealSettings(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V

    .line 71
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->updateCurrentMapper()V

    .line 72
    return-void
.end method

.method public showSettingsView()V
    .locals 7

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->show(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V

    .line 78
    return-void
.end method
