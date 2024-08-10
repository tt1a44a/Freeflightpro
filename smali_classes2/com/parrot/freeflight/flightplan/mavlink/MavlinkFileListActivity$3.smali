.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$3;
.super Ljava/lang/Object;
.source "MavlinkFileListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 125
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$3;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$3;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$400(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    .line 129
    return-void
.end method
