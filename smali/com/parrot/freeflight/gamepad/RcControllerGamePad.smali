.class public Lcom/parrot/freeflight/gamepad/RcControllerGamePad;
.super Lcom/parrot/freeflight/gamepad/GamePad;
.source "RcControllerGamePad.java"


# static fields
.field private static final GAME_PAD_UID:Ljava/lang/String; = "rc_controller"


# instance fields
.field private final mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mReceiverState:I

.field private mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;Landroid/content/Context;)V
    .locals 2
    .param p1, "rcControllerModel"    # Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    const/4 v0, 0x5

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;-><init>(II)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mReceiverState:I

    .line 22
    new-instance v0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/RcControllerGamePad$1;-><init>(Lcom/parrot/freeflight/gamepad/RcControllerGamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mResources:Landroid/content/res/Resources;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/RcControllerGamePad;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/RcControllerGamePad;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->updateConnectionState()Z

    move-result v0

    return v0
.end method

.method private updateConnectionState()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getReceiverState()I

    move-result v0

    .line 147
    .local v0, "receiverState":I
    iget v2, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mReceiverState:I

    if-eq v2, v0, :cond_0

    .line 148
    iput v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mReceiverState:I

    .line 149
    iget v2, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mReceiverState:I

    packed-switch v2, :pswitch_data_0

    .line 158
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mState:I

    .line 163
    :goto_0
    return v1

    .line 151
    :pswitch_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mState:I

    goto :goto_0

    .line 154
    :pswitch_1
    iput v1, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mState:I

    goto :goto_0

    .line 163
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/parrot/freeflight/gamepad/GamePad;->close()V

    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 43
    return-void
.end method

.method public getButtonName(I)Ljava/lang/String;
    .locals 1
    .param p1, "keyCode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    const-string v0, ""

    return-object v0
.end method

.method public getDpadName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    const-string v0, ""

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    const-string v0, ""

    return-object v0
.end method

.method public getLeftJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 107
    const-string v0, ""

    return-object v0
.end method

.method public getLeftTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 131
    const-string v0, ""

    return-object v0
.end method

.method public getMappingImageId()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f070356

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f11060f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getReceiverProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRcControllerModel()Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    return-object v0
.end method

.method public getRightJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    const-string v0, ""

    return-object v0
.end method

.method public getRightTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 137
    const-string v0, ""

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    const-string v0, ""

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopLeftJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 119
    const-string v0, ""

    return-object v0
.end method

.method public getTopRightJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 125
    const-string v0, ""

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    const-string/jumbo v0, "rc_controller"

    return-object v0
.end method

.method public hasBatteryLevel()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
