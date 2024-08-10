.class public Lcom/parrot/freeflight/infos/DroneInfosBuilder;
.super Ljava/lang/Object;
.source "DroneInfosBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUiController(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;)Lcom/parrot/freeflight/infos/DroneInfosUiController;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "window"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "deviceConnector"    # Lcom/parrot/freeflight/core/DeviceConnector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "smartLocation"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/parrot/freeflight/infos/DroneInfosBuilder$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 36
    new-instance v0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;

    const v7, 0x7f0c002a

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;I)V

    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;

    const v7, 0x7f0c002c

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/infos/FixedWingInfosUiController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;I)V

    goto :goto_0

    .line 28
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;

    const v7, 0x7f0c002b

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;I)V

    goto :goto_0

    .line 31
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;

    const v7, 0x7f0c0029

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/infos/QuadcopterInfosUiController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/DroneModel;Landroid/view/Window;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/location/SmartLocationManager;I)V

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
