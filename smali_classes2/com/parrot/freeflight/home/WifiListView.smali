.class public Lcom/parrot/freeflight/home/WifiListView;
.super Lcom/parrot/freeflight/home/DeviceListView;
.source "WifiListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/home/DeviceListView",
        "<",
        "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
        "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
        "<",
        "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mOnForgetDroneClickListener:Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/home/WifiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/home/WifiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/home/DeviceListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/WifiListView;)Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/WifiListView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListView;->mOnForgetDroneClickListener:Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/home/WifiListView;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/WifiListView;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/home/WifiListView;->update(Ljava/util/List;Z)V

    return-void
.end method

.method private update(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fromDevice"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListView;->mListAdapter:Lcom/parrot/freeflight/home/DeviceListAdapter;

    check-cast v0, Lcom/parrot/freeflight/home/WifiListAdapter;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/home/WifiListAdapter;->setUpdatedFromDevice(Z)V

    .line 54
    invoke-super {p0, p1}, Lcom/parrot/freeflight/home/DeviceListView;->update(Ljava/util/List;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected initAdapter()Lcom/parrot/freeflight/home/DeviceListAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/home/DeviceListAdapter",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/parrot/freeflight/home/WifiListAdapter;

    invoke-direct {v0}, Lcom/parrot/freeflight/home/WifiListAdapter;-><init>()V

    .line 61
    .local v0, "wifiListAdapter":Lcom/parrot/freeflight/home/WifiListAdapter;
    new-instance v1, Lcom/parrot/freeflight/home/WifiListView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/home/WifiListView$1;-><init>(Lcom/parrot/freeflight/home/WifiListView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/WifiListAdapter;->registerOnForgetDroneClickListener(Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;)V

    .line 69
    return-object v0
.end method

.method public setOnForgetDroneClickListener(Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/home/WifiListView;->mOnForgetDroneClickListener:Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;

    .line 74
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListView;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 39
    return-void
.end method

.method public setSwipeToRefreshEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListView;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListView;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 46
    return-void
.end method

.method public startLoading()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListView;->mListAdapter:Lcom/parrot/freeflight/home/DeviceListAdapter;

    check-cast v0, Lcom/parrot/freeflight/home/WifiListAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/WifiListAdapter;->startLoading()V

    .line 50
    return-void
.end method

.method public updateFromDroneInfoList(Ljava/util/List;Ljava/lang/String;Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;Ljava/util/Comparator;ZZ)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selectedDrone"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "sorter"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Comparator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "mergeSsid"    # Z
    .param p6, "fromDevice"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "droneList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    new-instance v5, Lcom/parrot/freeflight/home/WifiListView$2;

    invoke-direct {v5, p0, p6}, Lcom/parrot/freeflight/home/WifiListView$2;-><init>(Lcom/parrot/freeflight/home/WifiListView;Z)V

    move-object v0, p3

    move-object v2, p4

    move-object v3, p2

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->sort(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/String;ZLcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;)V

    .line 88
    return-void
.end method
