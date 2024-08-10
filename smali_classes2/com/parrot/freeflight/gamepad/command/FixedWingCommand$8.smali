.class final enum Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$8;
.super Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;
.source "FixedWingCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIIZZI)V
    .locals 9
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .param p5, "analog"    # Z
    .param p6, "repeatable"    # Z
    .param p7, "repeatingIntervalInMs"    # I

    .prologue
    .line 82
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand;-><init>(Ljava/lang/String;IIIZZILcom/parrot/freeflight/gamepad/command/FixedWingCommand$1;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;F)V
    .locals 3
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 85
    const-string v0, "FixedWingCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getMediaRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->startMediaRecording()V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->stopMediaRecording()V

    goto :goto_0
.end method

.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    check-cast p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$8;->execute(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;F)V

    return-void
.end method
