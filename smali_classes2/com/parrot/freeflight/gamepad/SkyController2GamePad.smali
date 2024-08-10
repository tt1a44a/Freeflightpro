.class public Lcom/parrot/freeflight/gamepad/SkyController2GamePad;
.super Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;
.source "SkyController2GamePad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;
    }
.end annotation


# instance fields
.field private final mSkyControllerJoystickEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSkyControllerKeyEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;II)V

    .line 26
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$1;-><init>(Lcom/parrot/freeflight/gamepad/SkyController2GamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerKeyEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;

    .line 48
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$2;-><init>(Lcom/parrot/freeflight/gamepad/SkyController2GamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerJoystickEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;

    .line 79
    return-void
.end method

.method protected constructor <init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;I)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;II)V

    .line 26
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$1;-><init>(Lcom/parrot/freeflight/gamepad/SkyController2GamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerKeyEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;

    .line 48
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$2;-><init>(Lcom/parrot/freeflight/gamepad/SkyController2GamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerJoystickEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;

    .line 83
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->close()V

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerKeyEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeKeyEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;)V

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerJoystickEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeJoystickEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;)V

    .line 106
    return-void
.end method

.method protected getActionIdByCommandId(IZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I
    .locals 1
    .param p1, "id"    # I
    .param p2, "analogCommand"    # Z
    .param p3, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    invoke-static {p1, p2, p3}, Lcom/parrot/freeflight/gamepad/command/SkyControllerGrabableCommand;->getRemoteCommandIdByDroneCommandId(IZLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v0

    return v0
.end method

.method protected getAxisId(Ljava/lang/String;I)I
    .locals 5
    .param p1, "axisName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "direction"    # I

    .prologue
    .line 173
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x5

    .local v3, "length":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 174
    invoke-static {}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->access$300()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 175
    .local v2, "key":I
    invoke-static {}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->access$300()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 176
    .local v0, "axisInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v4, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    if-ne v4, p2, :cond_0

    .line 177
    iget v4, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    .line 180
    .end local v0    # "axisInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v2    # "key":I
    :goto_1
    return v4

    .line 173
    .restart local v0    # "axisInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .restart local v2    # "key":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "axisInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v2    # "key":I
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method protected getButtonBitfield(Lcom/parrot/freeflight/gamepad/GamePad$Input;)I
    .locals 3
    .param p1, "input"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    iget v2, p1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->getButtonIdFromKeyCode(I)I

    move-result v0

    .line 189
    .local v0, "id":I
    if-ltz v0, :cond_0

    .line 193
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    goto :goto_0
.end method

.method public getButtonName(I)Ljava/lang/String;
    .locals 3
    .param p1, "keyCode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 116
    if-gez p1, :cond_0

    .line 117
    const-string v2, "UNKNOW"

    .line 130
    :goto_0
    return-object v2

    .line 120
    :cond_0
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->getButtonIdFromKeyCode(I)I

    move-result v0

    .line 121
    .local v0, "buttonId":I
    if-gez v0, :cond_1

    .line 122
    const-string v2, "UNKNOW"

    goto :goto_0

    .line 125
    :cond_1
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->getInputById(IZ)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v1

    .line 126
    .local v1, "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-nez v1, :cond_2

    .line 127
    const-string v2, "UNKNOW"

    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getGrabValue(I)I
    .locals 1
    .param p1, "grabValue"    # I

    .prologue
    .line 87
    packed-switch p1, :pswitch_data_0

    .line 97
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 89
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 91
    :pswitch_2
    const v0, 0xf018

    goto :goto_0

    .line 93
    :pswitch_3
    const/16 v0, 0xf

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getMappingImageId()I
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f070434

    return v0
.end method

.method public getPreferences(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;
    .locals 6
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    if-eqz p1, :cond_0

    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p1, v0, :cond_1

    .line 137
    :cond_0
    sget-object p1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 141
    :cond_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/SkyController2GamePadPreferences;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getExpoMapItems()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/preferences/SkyController2GamePadPreferences;-><init>(Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$RemotePreferencesListener;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mGamePadRemotePreferences:Lcom/parrot/freeflight/gamepad/preferences/SkyControllerGrabableGamePadPreferences;

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
    .line 150
    invoke-static {}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->getResourceForName(Ljava/lang/String;Ljava/util/Map;)I

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
    .line 156
    invoke-static {}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->getResourceForName(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->setSelected(Z)V

    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerKeyEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addKeyEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;)V

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerJoystickEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addJoystickEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerJoystickEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeJoystickEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;)V

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mSkyControllerKeyEventListener:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeKeyEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;)V

    goto :goto_0
.end method
