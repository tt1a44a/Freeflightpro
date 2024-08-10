.class Lcom/parrot/freeflight/infos/DroneInfosUiController$3;
.super Ljava/lang/Object;
.source "DroneInfosUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/DeviceConnector$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$3;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILcom/parrot/freeflight/user/UserDrone;ILcom/parrot/freeflight/user/UserRemoteCtrl;)V
    .locals 2
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
    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$3;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$000(Lcom/parrot/freeflight/infos/DroneInfosUiController;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$3;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$3;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v1, v1, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$100(Lcom/parrot/freeflight/infos/DroneInfosUiController;Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$3;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->updateView()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$3;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$002(Lcom/parrot/freeflight/infos/DroneInfosUiController;I)I

    .line 201
    return-void
.end method
