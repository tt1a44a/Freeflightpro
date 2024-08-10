.class Lcom/parrot/freeflight/gamepad/GamePadManager$3;
.super Ljava/lang/Object;
.source "GamePadManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


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
    .line 135
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 3
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    instance-of v2, p1, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_0

    .line 139
    check-cast p1, Lcom/parrot/freeflight/core/model/DroneModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRcControllerModel()Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v1

    .line 140
    .local v1, "rcControllerModel":Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    if-eqz v1, :cond_0

    .line 141
    new-instance v0, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$400(Lcom/parrot/freeflight/gamepad/GamePadManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;-><init>(Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;Landroid/content/Context;)V

    .line 142
    .local v0, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$300(Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 143
    new-instance v2, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager$3$1;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager$3;Lcom/parrot/freeflight/gamepad/GamePad;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 157
    .end local v0    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    .end local v1    # "rcControllerModel":Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    :cond_0
    return-void
.end method
