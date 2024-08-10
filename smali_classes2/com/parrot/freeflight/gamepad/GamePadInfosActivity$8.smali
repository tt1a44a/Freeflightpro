.class Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;
.super Ljava/lang/Object;
.source "GamePadInfosActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 4
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 476
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$400(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$500(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$600(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;Lcom/parrot/freeflight/user/UserRemoteCtrl;ILcom/parrot/freeflight/gamepad/GamePad;)V

    .line 477
    instance-of v0, p1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$700(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$700(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$800(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    check-cast p1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$702(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 482
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$700(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$8;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$800(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 484
    :cond_1
    return-void
.end method
