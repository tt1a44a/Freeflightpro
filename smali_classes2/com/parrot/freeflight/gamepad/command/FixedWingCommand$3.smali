.class final enum Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$3;
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
    .line 29
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
    .locals 0
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 32
    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->rollAtWithCommandsActivation(F)V

    .line 34
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    check-cast p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/FixedWingCommand$3;->execute(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;F)V

    return-void
.end method
