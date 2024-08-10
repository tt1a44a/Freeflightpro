.class public Lcom/parrot/freeflight/piloting/PilotingBuilder;
.super Ljava/lang/Object;
.source "PilotingBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPilotingController(Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;)Lcom/parrot/freeflight/piloting/model/PilotingController;
    .locals 4
    .param p0, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "remoteCtrlModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "modelConfigurationChangeListener"    # Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFamily(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v0

    .line 45
    .local v0, "family":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;
    sget-object v2, Lcom/parrot/freeflight/piloting/PilotingBuilder$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 53
    new-instance v1, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;

    invoke-direct {v1, p1, p2}, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;-><init>(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;)V

    .line 56
    .local v1, "pilotingController":Lcom/parrot/freeflight/piloting/model/PilotingController;
    :goto_0
    return-object v1

    .line 47
    .end local v1    # "pilotingController":Lcom/parrot/freeflight/piloting/model/PilotingController;
    :pswitch_0
    new-instance v1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingController;

    invoke-direct {v1, p0, p1, p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingController;-><init>(Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;)V

    .line 48
    .restart local v1    # "pilotingController":Lcom/parrot/freeflight/piloting/model/PilotingController;
    goto :goto_0

    .line 50
    .end local v1    # "pilotingController":Lcom/parrot/freeflight/piloting/model/PilotingController;
    :pswitch_1
    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;

    invoke-direct {v1, p0, p1, p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;-><init>(Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;)V

    .line 51
    .restart local v1    # "pilotingController":Lcom/parrot/freeflight/piloting/model/PilotingController;
    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static buildUIController(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;ILcom/parrot/freeflight/core/FollowMeManager;)Lcom/parrot/freeflight/piloting/ui/PilotingUIController;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteCtrlModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "activityWindow"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "permissionChecker"    # Lcom/parrot/freeflight/util/PermissionChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "locationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "videoStreamingController"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "orientationChangeNeededListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "onHudAccessDeniedListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12, "followMeLockListener"    # Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13, "fpvStatePreference"    # Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p14, "launchMode"    # I
    .param p15, "followMeManager"    # Lcom/parrot/freeflight/core/FollowMeManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v5

    .line 74
    .local v5, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v0, Lcom/parrot/freeflight/piloting/PilotingBuilder$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {v5}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingUIController;

    new-instance v10, Lcom/parrot/freeflight/piloting/preference/FixedWingJoystickPreferences;

    invoke-direct {v10}, Lcom/parrot/freeflight/piloting/preference/FixedWingJoystickPreferences;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p13

    move/from16 v16, p14

    invoke-direct/range {v0 .. v16}, Lcom/parrot/freeflight/piloting/ui/fixedwing/FixedWingUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;I)V

    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    move-object/from16 v2, p1

    check-cast v2, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    new-instance v10, Lcom/parrot/freeflight/piloting/preference/BebopJoystickPreferences;

    invoke-direct {v10}, Lcom/parrot/freeflight/piloting/preference/BebopJoystickPreferences;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p15

    invoke-direct/range {v0 .. v18}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;Lcom/parrot/freeflight/followme/FollowMeViewController$FollowMeLockListener;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;ILcom/parrot/freeflight/core/FollowMeManager;)V

    goto :goto_0

    .line 83
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;

    move-object/from16 v2, p1

    check-cast v2, Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;

    new-instance v10, Lcom/parrot/freeflight/piloting/preference/BebopJoystickPreferences;

    invoke-direct {v10}, Lcom/parrot/freeflight/piloting/preference/BebopJoystickPreferences;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p13

    move/from16 v16, p14

    invoke-direct/range {v0 .. v16}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/chimera/ChimeraModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;Lcom/parrot/freeflight/piloting/ui/UIController$OnHudAccessDeniedListener;Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;I)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getLayoutResId(Lcom/parrot/freeflight/core/model/DroneModel;)I
    .locals 3
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 98
    .local v0, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v1, Lcom/parrot/freeflight/piloting/PilotingBuilder$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 107
    const v1, 0x7f0c004b

    :goto_0
    return v1

    .line 104
    :pswitch_0
    const v1, 0x7f0c004c

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
