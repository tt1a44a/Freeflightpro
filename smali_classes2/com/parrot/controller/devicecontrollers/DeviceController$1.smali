.class Lcom/parrot/controller/devicecontrollers/DeviceController$1;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    check-cast p2, Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;->getService()Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 188
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getARCommandsVersionSkyController()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceDiscoveryInfo()Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->copyFrom(Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;)V

    .line 191
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDecoder()Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$102(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .line 193
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$200(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 194
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 200
    return-void
.end method
