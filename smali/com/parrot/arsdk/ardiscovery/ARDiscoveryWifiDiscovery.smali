.class public interface abstract Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;
.super Ljava/lang/Object;
.source "ARDiscoveryWifiDiscovery.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDeviceServicesArray()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end method

.method public abstract open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract wifiAvailable(Z)V
.end method
