.class public interface abstract Lcom/parrot/freeflight/wifi/WifiDeviceProvider;
.super Ljava/lang/Object;
.source "WifiDeviceProvider.java"


# virtual methods
.method public abstract getCleanedSSID(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCurrentSSID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDroneComparator()Ljava/util/Comparator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiList()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract mergeSsid()Z
.end method

.method public abstract removeWifiListListener()V
.end method

.method public abstract setWifiListListener(Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;)V
    .param p1    # Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startScan()V
.end method
