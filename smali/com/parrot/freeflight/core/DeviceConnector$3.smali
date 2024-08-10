.class Lcom/parrot/freeflight/core/DeviceConnector$3;
.super Ljava/lang/Object;
.source "DeviceConnector.java"

# interfaces
.implements Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/DeviceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/DeviceConnector;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector$3;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

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
    .line 330
    const-string v0, "FF4.DC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChange \n\tnewState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tdrone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tdrone device controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tremote control = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tremote controller device controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector$3;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    if-eqz p4, :cond_0

    move-object v0, p4

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/DeviceConnector;->access$102(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 337
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector$3;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/core/DeviceConnector;->access$202(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector$3;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v0, p4}, Lcom/parrot/freeflight/core/DeviceConnector;->access$302(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector$3;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/DeviceConnector;->access$402(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector$3;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v0}, Lcom/parrot/freeflight/core/DeviceConnector;->access$500(Lcom/parrot/freeflight/core/DeviceConnector;)V

    .line 341
    return-void

    :cond_0
    move-object v0, p2

    .line 336
    goto :goto_0
.end method
