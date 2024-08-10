.class Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$1;
.super Ljava/lang/Object;
.source "SkyControllerGrabableGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->updateModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/SkyControllerGrabableGamePad;->notifyStateChange()V

    .line 74
    :cond_0
    return-void
.end method
