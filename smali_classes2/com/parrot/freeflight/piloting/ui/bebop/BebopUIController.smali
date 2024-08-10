.class public Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;
.super Lcom/parrot/freeflight/piloting/ui/PilotingUIController;
.source "BebopUIController.java"


# instance fields
.field private final mFollowMeControllerInterface:Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeTargetChangeListener:Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLynxController:Lcom/parrot/freeflight/followme/LynxController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLynxResultListener:Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;ILcom/parrot/freeflight/core/FollowMeManager;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bebopModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
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
    .param p15, "followMeLockListener"    # Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p16, "fpvStatePreference"    # Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p17, "launchMode"    # I
    .param p18, "followMeManager"    # Lcom/parrot/freeflight/core/FollowMeManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    new-instance v12, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-object/from16 v2, p16

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

    move/from16 v16, p17

    invoke-direct/range {v3 .. v16}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;I)V

    .line 44
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxResultListener:Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;

    .line 52
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mFollowMeTargetChangeListener:Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0a03ec

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    .line 88
    new-instance v3, Lcom/parrot/freeflight/followme/LynxController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/parrot/freeflight/followme/LynxController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxResultListener:Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/followme/LynxController;->setLynxResultListener(Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    move-object/from16 v0, p18

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/core/FollowMeManager;->addListener(Lcom/parrot/freeflight/core/FollowMeManager$Listener;)V

    .line 92
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mSettingsButtonClickListener:Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mOnSwitchFpvButtonClickListener:Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;

    move-object/from16 v16, v0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p10

    move-object/from16 v9, p16

    move-object/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v17, p15

    move-object/from16 v18, p18

    move/from16 v19, p17

    invoke-direct/range {v3 .. v19}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/followme/LynxController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;Lcom/parrot/freeflight/piloting/ui/PilotingHudView$OnSwitchFpvButtonClickListener;Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;Lcom/parrot/freeflight/core/FollowMeManager;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .line 98
    .local v20, "bebopHudView":Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
    invoke-virtual/range {v20 .. v20}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->getFollowMeControllerInterface()Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mFollowMeControllerInterface:Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mFollowMeControllerInterface:Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mFollowMeTargetChangeListener:Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;

    invoke-interface {v3, v4}, Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;->setOnTargetChangeListener(Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mHudView:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->created()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;)Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mFollowMeControllerInterface:Lcom/parrot/freeflight/piloting/ui/FollowMeControllerInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;)Lcom/parrot/freeflight/followme/LynxController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->destroy()V

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/LynxController;->setLynxResultListener(Lcom/parrot/freeflight/followme/LynxController$OnLynxResultListener;)V

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/LynxController;->destroy()V

    .line 127
    return-void
.end method

.method public showSettings(Landroid/view/View;I)V
    .locals 9
    .param p1, "settingsButton"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "category"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->showSettings(Landroid/view/View;I)V

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-object v5, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->revealSettings(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V

    .line 135
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->updateCurrentMapper()V

    .line 136
    return-void
.end method

.method public showSettingsView()V
    .locals 7

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mSettingsView:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    check-cast v1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->show(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V

    .line 141
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->start()V

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/LynxController;->start()V

    .line 112
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->stop()V

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->mLynxController:Lcom/parrot/freeflight/followme/LynxController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/LynxController;->stop()V

    .line 119
    return-void
.end method
