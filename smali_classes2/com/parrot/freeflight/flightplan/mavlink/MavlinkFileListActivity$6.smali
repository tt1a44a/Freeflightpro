.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$6;
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
    .line 146
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$6;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$6;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$700(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    .line 150
    return-void
.end method
