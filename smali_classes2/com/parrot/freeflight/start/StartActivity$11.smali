.class Lcom/parrot/freeflight/start/StartActivity$11;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/DeviceConnector$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/start/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/start/StartActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/start/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/parrot/freeflight/start/StartActivity$11;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILcom/parrot/freeflight/user/UserDrone;ILcom/parrot/freeflight/user/UserRemoteCtrl;)V
    .locals 3
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
    const/4 v2, 0x1

    .line 441
    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 443
    const-string v0, "FF4.Start"

    const-string v1, "Found drone or remote, going to next screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x5

    if-ge p3, v0, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$11;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/start/StartActivity;->access$1002(Lcom/parrot/freeflight/start/StartActivity;Z)Z

    .line 447
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$11;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$800(Lcom/parrot/freeflight/start/StartActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$11;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$700(Lcom/parrot/freeflight/start/StartActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$11;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/start/StartActivity;->nextScreen()V

    .line 452
    :cond_1
    return-void
.end method
