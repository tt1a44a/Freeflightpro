.class public Lcom/parrot/freeflight/settings/CalibrationBuilder;
.super Ljava/lang/Object;
.source "CalibrationBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUIController(Landroid/app/Activity;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)Lcom/parrot/freeflight/piloting/ui/UIController;
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "window"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "backButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v12

    .line 26
    .local v12, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v12}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v13

    .line 27
    .local v13, "store":Lcom/parrot/freeflight/core/model/ModelStore;
    sget-object v0, Lcom/parrot/freeflight/settings/CalibrationBuilder$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    invoke-virtual {v13}, Lcom/parrot/freeflight/core/model/ModelStore;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 32
    .local v2, "skyControllerModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    new-instance v0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;-><init>(Landroid/app/Activity;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    goto :goto_0

    .line 34
    .end local v2    # "skyControllerModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    :pswitch_1
    invoke-virtual {v13}, Lcom/parrot/freeflight/core/model/ModelStore;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 35
    .local v5, "skyController2PModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    new-instance v3, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;-><init>(Landroid/app/Activity;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    move-object v0, v3

    goto :goto_0

    .line 41
    .end local v5    # "skyController2PModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    :pswitch_2
    invoke-virtual {v13}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/core/model/DroneModel;

    .line 42
    .local v8, "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    if-eqz v8, :cond_0

    .line 43
    new-instance v6, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    move-object v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;-><init>(Landroid/app/Activity;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    move-object v0, v6

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getLayoutResId(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I
    .locals 2
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/parrot/freeflight/settings/CalibrationBuilder$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    const v0, 0x7f0c0067

    :goto_0
    return v0

    .line 56
    :pswitch_0
    const v0, 0x7f0c0069

    goto :goto_0

    .line 58
    :pswitch_1
    const v0, 0x7f0c006a

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
