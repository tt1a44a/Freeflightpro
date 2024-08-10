.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$9;
.super Ljava/lang/Object;
.source "MavlinkFileListActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->onSaveClick()V
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
    .line 204
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$9;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$9;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$900(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Ljava/lang/String;)V

    .line 208
    return-void
.end method
