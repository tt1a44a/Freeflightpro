.class Lcom/parrot/freeflight/home/HomeUIController$16;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/Window;Landroid/support/design/widget/NavigationView;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Lcom/parrot/freeflight/util/PermissionChecker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener",
        "<",
        "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceClick(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)Z
    .locals 3
    .param p1, "device"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 763
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/home/HomeUIController$16$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/home/HomeUIController$16$1;-><init>(Lcom/parrot/freeflight/home/HomeUIController$16;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V

    invoke-virtual {v0, p1, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->connectToDrone(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$SecurityListener;)V

    .line 778
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 772
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2700(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/DeviceConnector;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/wifi/ARWifiHelper;->addDoubleQuotesToSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/DeviceConnector;->connectToSsid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->setState(I)V

    goto :goto_0
.end method

.method public bridge synthetic onDeviceClick(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 760
    check-cast p1, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/home/HomeUIController$16;->onDeviceClick(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)Z

    move-result v0

    return v0
.end method
