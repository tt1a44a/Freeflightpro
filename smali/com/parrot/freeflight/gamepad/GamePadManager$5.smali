.class Lcom/parrot/freeflight/gamepad/GamePadManager$5;
.super Ljava/lang/Object;
.source "GamePadManager.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V
    .locals 4
    .param p1, "virtualInputDevice"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 282
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$600(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$800(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    .line 286
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$600(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$900(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 288
    .local v0, "device":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    .line 289
    .local v1, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->selectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 296
    .end local v0    # "device":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    .end local v1    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_1
    return-void
.end method
