.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14$1;
.super Ljava/lang/Object;
.source "MavlinkFileListActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14$1;->this$1:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 399
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14$1;->this$1:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1300(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14$1;->this$1:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1400(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 402
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->CACHED_MAVLINK_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 404
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14$1;->this$1:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1000(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14$1;->this$1:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;

    iget-object v1, v1, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1200(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->clone()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->add(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V

    .line 405
    return-void
.end method
