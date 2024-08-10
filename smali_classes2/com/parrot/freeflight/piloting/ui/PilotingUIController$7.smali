.class Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;
.super Ljava/lang/Object;
.source "PilotingUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 2
    .param p1, "selectedGamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 394
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    const-string v0, "PilotingUIController"

    const-string v1, "game pad found and connected, activate navigation mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    iput-object p1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 397
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->isASkyController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mOrientationChangeNeededListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mOrientationChangeNeededListener:Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;->onOrientationChangeNeeded(Z)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->access$100(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onSelectedGamePadChange()V

    .line 406
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    goto :goto_0
.end method
