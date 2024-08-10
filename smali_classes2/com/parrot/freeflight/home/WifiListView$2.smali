.class Lcom/parrot/freeflight/home/WifiListView$2;
.super Ljava/lang/Object;
.source "WifiListView.java"

# interfaces
.implements Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/WifiListView;->updateFromDroneInfoList(Ljava/util/List;Ljava/lang/String;Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;Ljava/util/Comparator;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/WifiListView;

.field final synthetic val$fromDevice:Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/WifiListView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/WifiListView;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/parrot/freeflight/home/WifiListView$2;->this$0:Lcom/parrot/freeflight/home/WifiListView;

    iput-boolean p2, p0, Lcom/parrot/freeflight/home/WifiListView$2;->val$fromDevice:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSortComplete(Ljava/util/List;)V
    .locals 2
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
    .line 84
    .local p1, "sortedList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListView$2;->this$0:Lcom/parrot/freeflight/home/WifiListView;

    iget-boolean v1, p0, Lcom/parrot/freeflight/home/WifiListView$2;->val$fromDevice:Z

    invoke-static {v0, p1, v1}, Lcom/parrot/freeflight/home/WifiListView;->access$100(Lcom/parrot/freeflight/home/WifiListView;Ljava/util/List;Z)V

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListView$2;->this$0:Lcom/parrot/freeflight/home/WifiListView;

    iget-object v0, v0, Lcom/parrot/freeflight/home/WifiListView;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 86
    return-void
.end method
