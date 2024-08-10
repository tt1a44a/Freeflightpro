.class Lcom/parrot/freeflight/home/WifiListView$1;
.super Ljava/lang/Object;
.source "WifiListView.java"

# interfaces
.implements Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/WifiListView;->initAdapter()Lcom/parrot/freeflight/home/DeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/WifiListView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/WifiListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/WifiListView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/parrot/freeflight/home/WifiListView$1;->this$0:Lcom/parrot/freeflight/home/WifiListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForgetDroneClick(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V
    .locals 1
    .param p1, "droneConnectionInfo"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListView$1;->this$0:Lcom/parrot/freeflight/home/WifiListView;

    invoke-static {v0}, Lcom/parrot/freeflight/home/WifiListView;->access$000(Lcom/parrot/freeflight/home/WifiListView;)Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/home/WifiListView$1;->this$0:Lcom/parrot/freeflight/home/WifiListView;

    invoke-static {v0}, Lcom/parrot/freeflight/home/WifiListView;->access$000(Lcom/parrot/freeflight/home/WifiListView;)Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/home/WifiListView$OnForgetDroneClickListener;->onForgetDroneClick(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V

    .line 67
    :cond_0
    return-void
.end method
