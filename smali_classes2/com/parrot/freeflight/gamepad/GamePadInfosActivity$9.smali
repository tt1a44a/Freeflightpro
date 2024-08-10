.class Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;
.super Ljava/lang/Object;
.source "GamePadInfosActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/DeviceConnector$IListener;


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
    .line 487
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILcom/parrot/freeflight/user/UserDrone;ILcom/parrot/freeflight/user/UserRemoteCtrl;)V
    .locals 4
    .param p1, "droneState"    # I
    .param p2, "userDrone"    # Lcom/parrot/freeflight/user/UserDrone;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "remoteCtrlState"    # I
    .param p4, "userRemoteCtrl"    # Lcom/parrot/freeflight/user/UserRemoteCtrl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 491
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0, p4}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$402(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;Lcom/parrot/freeflight/user/UserRemoteCtrl;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 492
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$500(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 493
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0, p3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$502(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;I)I

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$400(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$500(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$9;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$600(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;Lcom/parrot/freeflight/user/UserRemoteCtrl;ILcom/parrot/freeflight/gamepad/GamePad;)V

    .line 496
    return-void
.end method
