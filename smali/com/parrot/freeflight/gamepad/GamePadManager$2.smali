.class Lcom/parrot/freeflight/gamepad/GamePadManager$2;
.super Ljava/lang/Object;
.source "GamePadManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/GamePadManager;->start()V
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
    .line 121
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 5
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$200(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    .line 125
    .local v1, "remoteCtrlModel":Lcom/parrot/freeflight/core/model/Model;
    const-string v2, "FF4.GamePad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRemoteCtrlModelChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadFactory;->create(Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 128
    .local v0, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz v0, :cond_0

    .line 129
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$300(Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 130
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$2;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->selectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 133
    .end local v0    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_0
    return-void
.end method
