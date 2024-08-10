.class public Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;
.super Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
.source "BridgedARDiscoveryDeviceService.java"


# static fields
.field public static final BRIDGED_UID_SUFFIX:Ljava/lang/String; = "_bridged"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;-><init>(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method
