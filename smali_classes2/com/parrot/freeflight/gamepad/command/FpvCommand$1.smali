.class final enum Lcom/parrot/freeflight/gamepad/command/FpvCommand$1;
.super Lcom/parrot/freeflight/gamepad/command/FpvCommand;
.source "FpvCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/command/FpvCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 7
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .param p5, "analog"    # Z

    .prologue
    .line 12
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/FpvCommand;-><init>(Ljava/lang/String;IIIZLcom/parrot/freeflight/gamepad/command/FpvCommand$1;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;F)V
    .locals 3
    .param p1, "controller"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 15
    const-string v0, "FpvCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-interface {p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;->switchFpvViewModeCommand()V

    .line 17
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/FpvCommand$1;->execute(Lcom/parrot/freeflight/piloting/ui/fpv/FpvUiCommandController;F)V

    return-void
.end method
