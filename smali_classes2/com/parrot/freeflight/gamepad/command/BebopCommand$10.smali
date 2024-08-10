.class final enum Lcom/parrot/freeflight/gamepad/command/BebopCommand$10;
.super Lcom/parrot/freeflight/gamepad/command/BebopCommand;
.source "BebopCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/command/BebopCommand;
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
    .line 106
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/command/BebopCommand;-><init>(Ljava/lang/String;IIIZZILcom/parrot/freeflight/gamepad/command/BebopCommand$1;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;F)V
    .locals 12
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 109
    const-string v0, "BebopCommand"

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

    .line 110
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getExpositionState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v8

    .line 111
    .local v8, "expositionState":Lcom/parrot/freeflight/util/DoubleBoundedState;
    invoke-virtual {v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v6

    .line 112
    .local v6, "currentExpoValue":D
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, v6, v0

    .line 113
    invoke-virtual {v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v2

    .line 114
    invoke-virtual {v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v4

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(DDD)D

    move-result-wide v10

    .line 115
    .local v10, "newExpoValue":D
    double-to-float v0, v10

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->setImageExposition(F)V

    .line 116
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    check-cast p1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/BebopCommand$10;->execute(Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;F)V

    return-void
.end method
