.class Lcom/parrot/freeflight/core/AutoLaunchManager$4;
.super Ljava/lang/Object;
.source "AutoLaunchManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/DeviceConnector$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

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
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "stateChanged":Z
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$500(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$600(Lcom/parrot/freeflight/core/AutoLaunchManager;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1, p2}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$502(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/user/UserDrone;)Lcom/parrot/freeflight/user/UserDrone;

    .line 145
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$602(Lcom/parrot/freeflight/core/AutoLaunchManager;I)I

    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$700(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    .line 147
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$800(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    .line 148
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$900(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    .line 149
    const/4 v0, 0x1

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    if-ne v1, p4, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1100(Lcom/parrot/freeflight/core/AutoLaunchManager;)I

    move-result v1

    if-eq v1, p3, :cond_3

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1, p4}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1002(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/user/UserRemoteCtrl;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1, p3}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1102(Lcom/parrot/freeflight/core/AutoLaunchManager;I)I

    .line 155
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1200(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    .line 156
    const/4 v0, 0x1

    .line 158
    :cond_3
    if-eqz v0, :cond_4

    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1300(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;->access$1400(Lcom/parrot/freeflight/core/AutoLaunchManager$FpvModeChecker;)V

    .line 160
    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$4;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1500(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    .line 162
    :cond_4
    return-void
.end method
