.class public Lcom/parrot/freeflight/gamepad/GamePadFactory;
.super Ljava/lang/Object;
.source "GamePadFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 5
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    instance-of v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v3, :cond_0

    .line 20
    const-string v3, "FF4.GamePad"

    const-string v4, "A SkyController is available in ModelStore. Check if a GamePad already exists for it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    .line 22
    check-cast v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 23
    .local v1, "skyControllerModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v2

    .line 24
    .local v2, "skyControllerType":I
    packed-switch v2, :pswitch_data_0

    .line 39
    .end local v1    # "skyControllerModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .end local v2    # "skyControllerType":I
    :cond_0
    :goto_0
    return-object v0

    .line 26
    .restart local v1    # "skyControllerModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .restart local v2    # "skyControllerType":I
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;

    .end local v0    # "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/SkyControllerGamePad;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 27
    .restart local v0    # "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    goto :goto_0

    .line 29
    :pswitch_1
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    .end local v0    # "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 30
    .restart local v0    # "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    goto :goto_0

    .line 32
    :pswitch_2
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;

    .end local v0    # "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/SkyController2PGamePad;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 33
    .restart local v0    # "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    goto :goto_0

    .line 35
    :pswitch_3
    new-instance v0, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;

    .end local v0    # "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/SkyControllerNGGamePad;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .restart local v0    # "gamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
