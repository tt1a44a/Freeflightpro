.class Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;
.super Ljava/lang/Object;
.source "GamePadManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/GamePadManager$3;->onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/gamepad/GamePadManager$3;

.field final synthetic val$gamePad:Lcom/parrot/freeflight/gamepad/GamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadManager$3;Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/gamepad/GamePadManager$3;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;->this$1:Lcom/parrot/freeflight/gamepad/GamePadManager$3;

    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;->val$gamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;->val$gamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v0

    .line 147
    .local v0, "connected":Z
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;->this$1:Lcom/parrot/freeflight/gamepad/GamePadManager$3;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$500(Lcom/parrot/freeflight/gamepad/GamePadManager;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;->this$1:Lcom/parrot/freeflight/gamepad/GamePadManager$3;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$502(Lcom/parrot/freeflight/gamepad/GamePadManager;Z)Z

    .line 149
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;->this$1:Lcom/parrot/freeflight/gamepad/GamePadManager$3;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$600(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;->this$1:Lcom/parrot/freeflight/gamepad/GamePadManager$3;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$600(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;->this$1:Lcom/parrot/freeflight/gamepad/GamePadManager$3;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;->val$gamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->selectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 153
    :cond_1
    return-void
.end method
