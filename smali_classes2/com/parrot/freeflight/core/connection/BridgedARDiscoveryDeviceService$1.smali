.class final Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService$1;
.super Ljava/lang/Object;
.source "BridgedARDiscoveryDeviceService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 16
    new-instance v0, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService$1;->createFromParcel(Landroid/os/Parcel;)Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 22
    new-array v0, p1, [Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService$1;->newArray(I)[Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;

    move-result-object v0

    return-object v0
.end method
