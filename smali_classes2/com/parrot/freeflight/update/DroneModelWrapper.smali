.class Lcom/parrot/freeflight/update/DroneModelWrapper;
.super Ljava/lang/Object;
.source "DroneModelWrapper.java"


# instance fields
.field private final mModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 3
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    instance-of v0, p1, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 20
    iput-object p1, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    .line 24
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in updater"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v0, v0, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    goto :goto_0
.end method

.method public getIp()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v1, v1, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v1, Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    .line 64
    .local v0, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getIp()Ljava/lang/String;

    move-result-object v1

    .line 68
    .end local v0    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0.0.0.0"

    goto :goto_0
.end method

.method public getModel()Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v0, v0, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reboot()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    instance-of v0, v0, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/update/DroneModelWrapper;->mModel:Lcom/parrot/freeflight/core/model/Model;

    check-cast v0, Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->reboot()V

    .line 58
    :cond_0
    return-void
.end method
