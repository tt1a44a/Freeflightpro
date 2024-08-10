.class public Lcom/parrot/freeflight/update/GamePadUpdaterHelper;
.super Ljava/lang/Object;
.source "GamePadUpdaterHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGamePadToConnectedProductList(Ljava/util/List;Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            ">;",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "connectedProductList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    instance-of v0, p1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    if-eqz v0, :cond_1

    .line 17
    check-cast p1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    .end local p1    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 18
    .restart local p1    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_1
    instance-of v0, p1, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_TINOS:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addGamePadToDeviceVersionList(Ljava/util/List;Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/DeviceVersion;",
            ">;",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "deviceVersionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/DeviceVersion;>;"
    instance-of v2, p1, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 25
    check-cast v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    .line 26
    .local v0, "skyController2GamePad":Lcom/parrot/freeflight/gamepad/SkyController2GamePad;
    new-instance v2, Lcom/parrot/freeflight/update/task/DeviceVersion;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/update/task/DeviceVersion;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .end local v0    # "skyController2GamePad":Lcom/parrot/freeflight/gamepad/SkyController2GamePad;
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    instance-of v2, p1, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 28
    check-cast v1, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .line 29
    .local v1, "tinosGamePad":Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
    new-instance v2, Lcom/parrot/freeflight/update/task/DeviceVersion;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->getMcuVersion()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_TINOS:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/update/task/DeviceVersion;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
