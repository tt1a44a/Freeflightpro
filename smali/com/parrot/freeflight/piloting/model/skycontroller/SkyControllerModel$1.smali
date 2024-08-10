.class Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"

# interfaces
.implements Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 3
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
    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;
    instance-of v1, p5, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v1, :cond_0

    move-object v0, p5

    .line 830
    check-cast v0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iput-object p4, v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 833
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$200(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 834
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 835
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$200(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 837
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$302(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Ljava/lang/String;)Ljava/lang/String;

    .line 839
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$400(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 840
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 841
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->update()V

    .line 844
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$500(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 845
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$502(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;)Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    .line 846
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 847
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->update()V

    .line 850
    :cond_3
    return-void
.end method
