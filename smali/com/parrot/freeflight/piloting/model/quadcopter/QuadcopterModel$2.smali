.class Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;
.super Ljava/lang/Object;
.source "QuadcopterModel.java"

# interfaces
.implements Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 4
    .param p1, "newState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "droneDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "remoteCtrlDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "remoteCtrlDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 1509
    const/4 v0, 0x0

    .line 1510
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    instance-of v1, p3, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 1511
    check-cast v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    .line 1513
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1, p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$102(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 1514
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$200(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 1515
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$302(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 1516
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$400(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 1518
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$500(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1519
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$602(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Z)Z

    .line 1521
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1522
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$700(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 1523
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$702(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    .line 1524
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$800(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 1525
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceDiscoveryInfo()Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->usesARStream2()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1526
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$900(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addVideoUpdateAlert()Z

    .line 1531
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1100(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->save()V

    .line 1532
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->restartNetworkAuthorizedCountryScan()V

    .line 1533
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1200(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 1534
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1100(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->restore()V

    .line 1535
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->saveToStore()V

    .line 1536
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$602(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Z)Z

    .line 1537
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1302(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Z)Z

    .line 1538
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 1540
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1400(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    .line 1542
    :cond_5
    return-void

    .line 1528
    :cond_6
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1000(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeVideoUpdateAlert()Z

    goto :goto_0
.end method
