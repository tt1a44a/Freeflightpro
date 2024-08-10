.class Lcom/parrot/freeflight/home/WifiListAdapter$1;
.super Ljava/lang/Object;
.source "WifiListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/WifiListAdapter;->initViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/WifiListAdapter;

.field final synthetic val$viewHolder:Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/WifiListAdapter;Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/WifiListAdapter;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/parrot/freeflight/home/WifiListAdapter$1;->this$0:Lcom/parrot/freeflight/home/WifiListAdapter;

    iput-object p2, p0, Lcom/parrot/freeflight/home/WifiListAdapter$1;->val$viewHolder:Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v2, p0, Lcom/parrot/freeflight/home/WifiListAdapter$1;->val$viewHolder:Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/home/WifiListAdapter$WifiViewHolder;->getAdapterPosition()I

    move-result v1

    .line 60
    .local v1, "position":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/home/WifiListAdapter$1;->this$0:Lcom/parrot/freeflight/home/WifiListAdapter;

    iget-object v2, v2, Lcom/parrot/freeflight/home/WifiListAdapter;->mFoundDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 64
    .local v0, "droneConnectionInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    iget-object v2, p0, Lcom/parrot/freeflight/home/WifiListAdapter$1;->this$0:Lcom/parrot/freeflight/home/WifiListAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/home/WifiListAdapter;->access$000(Lcom/parrot/freeflight/home/WifiListAdapter;)Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/parrot/freeflight/home/WifiListAdapter$1;->this$0:Lcom/parrot/freeflight/home/WifiListAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/home/WifiListAdapter;->access$000(Lcom/parrot/freeflight/home/WifiListAdapter;)Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;->onForgetDroneClick(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V

    goto :goto_0
.end method
