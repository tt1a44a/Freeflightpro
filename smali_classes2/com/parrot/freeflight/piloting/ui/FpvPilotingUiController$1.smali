.class Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$1;
.super Ljava/lang/Object;
.source "FpvPilotingUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePosition(FFF)V
    .locals 2
    .param p1, "distanceToDrone"    # F
    .param p2, "distanceToHome"    # F
    .param p3, "bearing"    # F

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->access$000(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->access$100(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;->access$000(Lcom/parrot/freeflight/piloting/ui/FpvPilotingUiController;)Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->updateDistance(ZF)V

    .line 97
    :cond_0
    return-void
.end method

.method public updateRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 102
    return-void
.end method
