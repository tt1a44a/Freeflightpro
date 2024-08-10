.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$2;
.super Ljava/lang/Object;
.source "MavlinkFileListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$2;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$2;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$000(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$2;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v0, p3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$100(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;I)V

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$2;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$200(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$2;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$100(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;I)V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$2;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$300(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    goto :goto_0
.end method
