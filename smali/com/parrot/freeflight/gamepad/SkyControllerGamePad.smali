.class public Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;
.super Lcom/parrot/freeflight/gamepad/GamePad;
.source "SkyControllerGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;
.implements Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;
.implements Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;
.implements Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;
    }
.end annotation


# instance fields
.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductVariant:I

.field private mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x2

    .line 49
    invoke-direct {p0, v0, v0}, Lcom/parrot/freeflight/gamepad/GamePad;-><init>(II)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mProductVariant:I

    .line 182
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$1;-><init>(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 50
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 51
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;

    invoke-direct {v0, p0, v1, v1}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;-><init>(Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->updateConnectionState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->updateBatterylevel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->updateMapping()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->updateJoystickParams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->updateProductVariant()Z

    move-result v0

    return v0
.end method

.method private saveAxis(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;II)V
    .locals 2
    .param p1, "gamePadJoystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "axisCode"    # I
    .param p3, "correspondingIndex"    # I

    .prologue
    .line 270
    invoke-virtual {p1, p3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getFilterAtIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "filter":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1, p2, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->setAxisFilter(ILjava/lang/String;)V

    .line 272
    return-void
.end method

.method private updateBatterylevel()Z
    .locals 2

    .prologue
    .line 260
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getBatteryLevel()I

    move-result v0

    .line 261
    .local v0, "batteryLevel":I
    iget v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mBatteryLevel:I

    if-eq v1, v0, :cond_0

    .line 262
    iput v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mBatteryLevel:I

    .line 263
    const/4 v1, 0x1

    .line 265
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateConnectionState()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 244
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 245
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq v2, v0, :cond_2

    .line 246
    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 247
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const/4 v2, 0x4

    iput v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mState:I

    .line 256
    :goto_0
    return v1

    .line 249
    :cond_0
    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v0, v2, :cond_1

    .line 250
    const/4 v2, 0x3

    iput v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mState:I

    goto :goto_0

    .line 252
    :cond_1
    iput v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mState:I

    goto :goto_0

    .line 256
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateJoystickParams()Z
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getJoystickFilters()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    move-result-object v0

    .line 225
    .local v0, "joystickFilter":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->size()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 226
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;->updateJoystickParams(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;)V

    .line 227
    const/4 v1, 0x1

    .line 229
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMapping()Z
    .locals 3

    .prologue
    .line 233
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getButtonsMapping()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    move-result-object v1

    .line 234
    .local v1, "buttonsMapping":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getAxisMapping()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    move-result-object v0

    .line 236
    .local v0, "axisMapping":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->isUpdated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;

    invoke-virtual {v2, v1, v0}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;->updateMapping(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;)V

    .line 238
    const/4 v2, 0x1

    .line 240
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateProductVariant()Z
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProductVariant()I

    move-result v0

    .line 215
    .local v0, "productVariant":I
    iget v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mProductVariant:I

    if-eq v1, v0, :cond_0

    .line 216
    iput v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mProductVariant:I

    .line 217
    const/4 v1, 0x1

    .line 219
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/parrot/freeflight/gamepad/GamePad;->close()V

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 106
    return-void
.end method

.method public getButtonName(I)Ljava/lang/String;
    .locals 3
    .param p1, "keyCode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "buttonName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v2, "KEYCODE_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const-string v2, "KEYCODE_MEDIA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KEYCODE_VOLUME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    :cond_0
    const-string v2, "KEYCODE_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 125
    const-string v0, "UNKNOW"

    .line 127
    :cond_2
    return-object v0

    .line 118
    :cond_3
    :try_start_1
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDpadName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 133
    const-string v0, "DPAD"

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputById(I)Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 324
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->getInputById(I)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v0

    return-object v0
.end method

.method public getInputs()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    sget-object v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->values:Ljava/util/List;

    return-object v0
.end method

.method public getLeftJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 139
    const-string v0, "J1"

    return-object v0
.end method

.method public getLeftTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 163
    const-string v0, "L2"

    return-object v0
.end method

.method public getMappingImageId()I
    .locals 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 200
    iget v1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mProductVariant:I

    packed-switch v1, :pswitch_data_0

    .line 206
    const v0, 0x7f07043b

    .line 209
    .local v0, "drawableRes":I
    :goto_0
    return v0

    .line 202
    .end local v0    # "drawableRes":I
    :pswitch_0
    const v0, 0x7f07043c

    .line 203
    .restart local v0    # "drawableRes":I
    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSsidName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;
    .locals 1
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGamePadPreferences;

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public getResourceForButton(Ljava/lang/String;)I
    .locals 1
    .param p1, "buttonName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 330
    iget v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mProductVariant:I

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->access$500(I)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->getResourceForName(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public getResourceForTrigger(Ljava/lang/String;)I
    .locals 1
    .param p1, "triggerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public getRightJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 145
    const-string v0, "J2"

    return-object v0
.end method

.method public getRightTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 169
    const-string v0, "R2"

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkyControllerModel()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopLeftJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 151
    const-string v0, "J3"

    return-object v0
.end method

.method public getTopRightJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 157
    const-string v0, "J4"

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBatteryLevel()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v0

    return v0
.end method

.method public onResetPreferences()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->requestResetPreferences()V

    .line 277
    return-void
.end method

.method public onSaveJoystickParams(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .locals 4
    .param p1, "gamePadJoystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 281
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->saveAxis(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;II)V

    .line 282
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->saveAxis(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;II)V

    .line 283
    invoke-direct {p0, p1, v2, v2}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->saveAxis(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;II)V

    .line 284
    invoke-direct {p0, p1, v3, v3}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->saveAxis(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;II)V

    .line 285
    return-void
.end method

.method public onSaveMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .locals 9
    .param p1, "gamePadMapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v2

    .line 290
    .local v2, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    .local v3, "gamePadInputsSent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 293
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    iget-object v5, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    check-cast v5, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/command/SkyControllerCommand;->getStringId()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "commandName":Ljava/lang/String;
    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 295
    .local v4, "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget v5, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-nez v5, :cond_0

    .line 296
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget v7, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    invoke-virtual {v5, v7, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->setButtonsMapping(ILjava/lang/String;)V

    .line 300
    :goto_1
    iget v5, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_0
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget v7, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    invoke-virtual {v5, v7, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->setAxisMapping(ILjava/lang/String;)V

    goto :goto_1

    .line 304
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v1    # "commandName":Ljava/lang/String;
    .end local v4    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_1
    sget-object v5, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad$Inputs;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 305
    .restart local v4    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget v6, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 306
    iget v6, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-nez v6, :cond_3

    .line 307
    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget v7, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    const-string v8, "No Action"

    invoke-virtual {v6, v7, v8}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->setButtonsMapping(ILjava/lang/String;)V

    goto :goto_2

    .line 309
    :cond_3
    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget v7, v4, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    const-string v8, "No Action"

    invoke-virtual {v6, v7, v8}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->setAxisMapping(ILjava/lang/String;)V

    goto :goto_2

    .line 313
    .end local v4    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_4
    return-void
.end method
