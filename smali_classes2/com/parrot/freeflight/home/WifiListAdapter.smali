.class public Lcom/parrot/freeflight/home/WifiListAdapter;
.super Lcom/parrot/freeflight/home/DeviceListAdapter;
.source "WifiListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;,
        Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/home/DeviceListAdapter",
        "<",
        "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
        "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
        "<",
        "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mLoading:Z

.field private mOnForgetDroneClickListener:Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUpdatedFromDevice:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    const-string v1, ""

    const-string v2, ""

    const/4 v7, 0x1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIZZ)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/home/DeviceListAdapter;-><init>(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/WifiListAdapter;)Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/WifiListAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListAdapter;->mOnForgetDroneClickListener:Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/home/WifiListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/WifiListAdapter;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/parrot/freeflight/home/WifiListAdapter;->mUpdatedFromDevice:Z

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/home/WifiListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/WifiListAdapter;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/parrot/freeflight/home/WifiListAdapter;->mLoading:Z

    return v0
.end method


# virtual methods
.method protected initViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00ac

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;-><init>(Lcom/parrot/freeflight/home/WifiListAdapter;Landroid/view/View;)V

    .line 56
    .local v1, "viewHolder":Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;
    invoke-static {v1}, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->access$100(Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/home/WifiListAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/home/WifiListAdapter$1;-><init>(Lcom/parrot/freeflight/home/WifiListAdapter;Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-object v1
.end method

.method public registerOnForgetDroneClickListener(Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/home/WifiListAdapter;->mOnForgetDroneClickListener:Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;

    .line 74
    return-void
.end method

.method public setUpdatedFromDevice(Z)V
    .locals 0
    .param p1, "fromDevice"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/parrot/freeflight/home/WifiListAdapter;->mUpdatedFromDevice:Z

    .line 85
    return-void
.end method

.method public startLoading()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/home/WifiListAdapter;->mLoading:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, v0}, Lcom/parrot/freeflight/home/DeviceListAdapter;->update(Ljava/util/List;)V

    .line 42
    return-void
.end method

.method public unregisterOnForgetDroneClickListener(Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListAdapter;->mOnForgetDroneClickListener:Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;

    if-ne v0, p1, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/home/WifiListAdapter;->mOnForgetDroneClickListener:Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;

    .line 80
    :cond_0
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/home/WifiListAdapter;->mLoading:Z

    .line 47
    invoke-super {p0, p1}, Lcom/parrot/freeflight/home/DeviceListAdapter;->update(Ljava/util/List;)V

    .line 49
    return-void
.end method
