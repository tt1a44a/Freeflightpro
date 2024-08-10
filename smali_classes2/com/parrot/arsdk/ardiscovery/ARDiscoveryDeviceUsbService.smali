.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
.super Ljava/lang/Object;
.source "ARDiscoveryDeviceUsbService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final serial:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "ARDiscoveryDeviceUsbService"

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->TAG:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService$1;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService$1;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->serial:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->serial:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 51
    const/4 v0, 0x1

    .line 53
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-nez v2, :cond_2

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 72
    :cond_1
    :goto_0
    return v0

    .line 57
    :cond_2
    if-ne p1, p0, :cond_3

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 64
    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    .line 66
    .local v1, "otherDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->serial:Ljava/lang/String;

    iget-object v3, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->serial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->serial:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->serial:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->serial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return-void
.end method
