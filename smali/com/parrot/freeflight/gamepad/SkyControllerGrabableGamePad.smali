.class public abstract Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;
.super Lcom/parrot/freeflight/gamepad/GamePad;
.source "SkyControllerGrabableGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;
.implements Lcom/parrot/freeflight/gamepad/GamePad$MappingEventFilter;
.implements Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;
.implements Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$GrabValue;
    }
.end annotation


# static fields
.field protected static final GRAB_ALL_AXES:I = 0x3

.field protected static final GRAB_ALL_BUTTONS:I = 0x0

.field protected static final GRAB_NAVIGATION_BUTTONS:I = 0x1

.field protected static final GRAB_NO_AXES:I = 0x4

.field protected static final GRAB_NO_BUTTONS:I = 0x2


# instance fields
.field protected mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mFilterType:I

.field protected mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSkyControllerAppEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;II)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I
    .param p3, "connectivityType"    # I

    .prologue
    .line 92
    invoke-direct {p0, p2, p3}, Lcom/parrot/freeflight/gamepad/GamePad;-><init>(II)V

    .line 67
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$1;-><init>(Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 77
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$2;-><init>(Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerAppEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mFilterType:I

    .line 94
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 97
    return-void
.end method

.method private sendAxisMapping(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)V
    .locals 6
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionId"    # I
    .param p3, "firstInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "secondInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 381
    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v4

    int-to-short v3, v4

    .line 382
    .local v3, "nativeProduct":S
    invoke-static {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    move-result-object v0

    .line 383
    .local v0, "action":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
    iget-object v4, p3, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    iget v5, p3, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {p0, v4, v5}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getAxisId(Ljava/lang/String;I)I

    move-result v1

    .line 384
    .local v1, "axis":I
    invoke-virtual {p0, p4}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getButtonBitfield(Lcom/parrot/freeflight/gamepad/GamePad$Input;)I

    move-result v2

    .line 386
    .local v2, "buttons":I
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->sendAxisMapping(SLcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;II)V

    .line 387
    return-void
.end method

.method private sendButtonMapping(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)V
    .locals 5
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionId"    # I
    .param p3, "firstInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "secondInput"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v3

    int-to-short v2, v3

    .line 392
    .local v2, "nativeProduct":S
    invoke-static {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;

    move-result-object v0

    .line 393
    .local v0, "action":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getButtonBitfield(Lcom/parrot/freeflight/gamepad/GamePad$Input;)I

    move-result v3

    invoke-virtual {p0, p4}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getButtonBitfield(Lcom/parrot/freeflight/gamepad/GamePad$Input;)I

    move-result v4

    or-int v1, v3, v4

    .line 395
    .local v1, "buttons":I
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v3, v2, v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->sendButtonMapping(SLcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;I)V

    .line 396
    return-void
.end method

.method private updateGrabState()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 175
    iget v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getGrabValue(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getGrabValue(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->grabCommand(II)V

    .line 189
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getGrabValue(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getGrabValue(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->grabCommand(II)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getGrabValue(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getGrabValue(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->grabCommand(II)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/parrot/freeflight/gamepad/GamePad;->close()V

    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerAppEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeAppEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;)V

    .line 259
    return-void
.end method

.method protected abstract getActionIdByCommandId(IZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I
    .param p3    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract getAxisId(Ljava/lang/String;I)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract getButtonBitfield(Lcom/parrot/freeflight/gamepad/GamePad$Input;)I
    .param p1    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public getButtonName(I)Ljava/lang/String;
    .locals 1
    .param p1, "keyCode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDpadName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 269
    const-string v0, "DPAD"

    return-object v0
.end method

.method protected abstract getGrabValue(I)I
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 275
    const-string v0, "J1"

    return-object v0
.end method

.method public getLeftTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 299
    const-string v0, "DPAD"

    return-object v0
.end method

.method public getMappingImageId()I
    .locals 1

    .prologue
    .line 263
    const v0, 0x7f070434

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSsidName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public getRightJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 281
    const-string v0, "J2"

    return-object v0
.end method

.method public getRightTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 305
    const-string v0, "R2"

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->updateConnectionState()Z

    .line 240
    invoke-super {p0}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v0

    return v0
.end method

.method public getTopLeftJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 287
    const-string v0, "J3"

    return-object v0
.end method

.method public getTopRightJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 293
    const-string v0, "J4"

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBatteryLevel()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v0

    return v0
.end method

.method public onResetPreferences()V
    .locals 3

    .prologue
    .line 340
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 342
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v2

    int-to-short v0, v2

    .line 343
    .local v0, "nativeProduct":S
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->resetSkyControllerMapping(S)V

    .line 345
    .end local v0    # "nativeProduct":S
    .end local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_0
    return-void
.end method

.method public onSaveJoystickParams(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .locals 8
    .param p1, "gamePadJoystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 349
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    if-eqz v5, :cond_0

    .line 350
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    .line 351
    .local v4, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v5

    int-to-short v3, v5

    .line 352
    .local v3, "nativeProduct":S
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getAxisExpo()Landroid/util/SparseArray;

    move-result-object v0

    .line 353
    .local v0, "axisExpos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 354
    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v6, v3, v7, v5}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->sendExpoChange(SILcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "axisExpos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;>;"
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "nativeProduct":S
    .end local v4    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_0
    return-void
.end method

.method public onSaveMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .locals 9
    .param p1, "gamePadMapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 361
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    if-eqz v7, :cond_1

    .line 362
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    invoke-virtual {v7}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v5

    .line 363
    .local v5, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 364
    .local v4, "gamePadAction":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v2, v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 365
    .local v2, "command":Lcom/parrot/freeflight/gamepad/command/Command;
    iget-object v3, v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 366
    .local v3, "firstInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v6, v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 367
    .local v6, "secondInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v1

    .line 368
    .local v1, "analogCommand":Z
    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/command/Command;->getId()I

    move-result v8

    invoke-virtual {p0, v8, v1, v5}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->getActionIdByCommandId(IZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v0

    .line 370
    .local v0, "actionId":I
    if-eqz v1, :cond_0

    .line 371
    invoke-direct {p0, v5, v0, v3, v6}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->sendAxisMapping(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-direct {p0, v5, v0, v3, v6}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->sendButtonMapping(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)V

    goto :goto_0

    .line 377
    .end local v0    # "actionId":I
    .end local v1    # "analogCommand":Z
    .end local v2    # "command":Lcom/parrot/freeflight/gamepad/command/Command;
    .end local v3    # "firstInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v4    # "gamePadAction":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v5    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v6    # "secondInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_1
    return-void
.end method

.method public setEventFilter(I)V
    .locals 0
    .param p1, "filter"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mFilterType:I

    .line 336
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadLocked:Z

    if-nez v0, :cond_1

    .line 246
    iput p1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mMode:I

    .line 247
    iget v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mFilterType:I

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->updateGrabState()V

    .line 252
    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/parrot/freeflight/gamepad/GamePad;->setSelected(Z)V

    .line 326
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerAppEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addAppEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerAppEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeAppEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;)V

    goto :goto_0
.end method

.method protected updateBatteryLevel()Z
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getBatteryLevel()I

    move-result v0

    .line 140
    .local v0, "batteryLevel":I
    iget v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mBatteryLevel:I

    if-eq v1, v0, :cond_0

    .line 141
    iput v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mBatteryLevel:I

    .line 142
    const/4 v1, 0x1

    .line 144
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateConnectionState()Z
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 108
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 109
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq v4, v0, :cond_4

    .line 110
    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 111
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    const/4 v4, 0x4

    iput v4, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mState:I

    .line 114
    const-string v4, "FF4.GamePad"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SkyController connected, send grab command for mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v1

    .line 117
    .local v1, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v2

    .line 119
    .local v2, "networkType":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_USBMUX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v2, v4, :cond_1

    .line 120
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->setConnectivityType(I)V

    .line 125
    .end local v2    # "networkType":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->updateGrabState()V

    .line 135
    .end local v1    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :goto_1
    return v3

    .line 122
    .restart local v1    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .restart local v2    # "networkType":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->setConnectivityType(I)V

    goto :goto_0

    .line 126
    .end local v1    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v2    # "networkType":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    :cond_2
    sget-object v4, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v0, v4, :cond_3

    .line 127
    const/4 v4, 0x3

    iput v4, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mState:I

    .line 128
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->setConnectivityType(I)V

    goto :goto_1

    .line 130
    :cond_3
    iput v3, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mState:I

    .line 131
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->setConnectivityType(I)V

    goto :goto_1

    .line 135
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected updateExpoMap()Z
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getExpoMapItems()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    move-result-object v0

    .line 165
    .local v0, "expoMapItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;>;"
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->updateExpoMap(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;)V

    .line 169
    :cond_0
    const/4 v1, 0x1

    .line 171
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateMapping()Z
    .locals 5

    .prologue
    .line 148
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getButtonMappingItems()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    move-result-object v1

    .line 149
    .local v1, "buttonMappingItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getAxisMappingItems()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    move-result-object v0

    .line 151
    .local v0, "axisMappingItems":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;>;"
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->isUpdated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    :cond_0
    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    .line 153
    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    .line 154
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->updateMapping(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;)V

    .line 157
    :cond_1
    const/4 v2, 0x1

    .line 159
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected updateModel()Z
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->updateConnectionState()Z

    move-result v0

    .line 101
    .local v0, "updated":Z
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->updateBatteryLevel()Z

    move-result v1

    or-int/2addr v0, v1

    .line 102
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->updateMapping()Z

    move-result v1

    or-int/2addr v0, v1

    .line 103
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->updateExpoMap()Z

    move-result v1

    or-int/2addr v0, v1

    .line 104
    return v0
.end method
