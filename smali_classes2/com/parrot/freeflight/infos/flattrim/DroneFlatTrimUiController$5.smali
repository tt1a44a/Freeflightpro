.class Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$5;
.super Ljava/lang/Object;
.source "DroneFlatTrimUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/DeviceConnector$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$5;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILcom/parrot/freeflight/user/UserDrone;ILcom/parrot/freeflight/user/UserRemoteCtrl;)V
    .locals 1
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
    .line 182
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$5;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->access$200(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$5;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->access$302(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;I)I

    .line 187
    return-void
.end method
