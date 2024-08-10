.class Lcom/parrot/freeflight/home/HomeUIController$24;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 982
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 990
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3602(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 991
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3702(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 992
    return-void
.end method

.method public onConnectToDrone(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "device"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "password"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 985
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->connectToDrone(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Ljava/lang/String;)V

    .line 986
    :cond_0
    return-void
.end method
