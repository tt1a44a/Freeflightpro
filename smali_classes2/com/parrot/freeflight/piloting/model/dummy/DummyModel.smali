.class public Lcom/parrot/freeflight/piloting/model/dummy/DummyModel;
.super Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
.source "DummyModel.java"


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 6
    .param p1, "localStorage"    # Lcom/parrot/freeflight/core/model/LocalStorage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 25
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;-><init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V

    .line 26
    return-void
.end method

.method public static createModel(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/piloting/model/dummy/DummyModel;
    .locals 1
    .param p0, "localStorage"    # Lcom/parrot/freeflight/core/model/LocalStorage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/parrot/freeflight/piloting/model/dummy/DummyModel;

    invoke-direct {v0, p0, p1}, Lcom/parrot/freeflight/piloting/model/dummy/DummyModel;-><init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    return-object v0
.end method

.method public static getDefaultProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method


# virtual methods
.method public getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method public listenEvents(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listen"    # Z

    .prologue
    .line 50
    return-void
.end method

.method public loadFromStore()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 38
    return-void
.end method

.method public saveToStore()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 32
    return-void
.end method
