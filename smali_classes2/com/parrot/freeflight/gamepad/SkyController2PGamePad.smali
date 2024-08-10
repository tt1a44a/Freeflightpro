.class public Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;
.super Lcom/parrot/freeflight/gamepad/SkyController2GamePad;
.source "SkyController2PGamePad.java"


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public getPreferences(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;
    .locals 6
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 20
    if-eqz p1, :cond_0

    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p1, v0, :cond_1

    .line 21
    :cond_0
    sget-object p1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 25
    :cond_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/SkyController2PGamePadPreferences;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getExpoMapItems()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/preferences/SkyController2PGamePadPreferences;-><init>(Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    return-object v0
.end method
