.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;
.super Ljava/lang/Object;
.source "MavlinkFileListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->checkUnsavedPlanBeforeExecute(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

.field final synthetic val$actionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->val$actionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 395
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1200(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getUuidInWorking()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 396
    new-instance v1, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14$1;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;)V

    .line 407
    .local v1, "saveActionListener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->val$actionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    invoke-static {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1500(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V

    .line 417
    .end local v1    # "saveActionListener":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1200(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getUuidInWorking()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1600(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Ljava/lang/String;)I

    move-result v0

    .line 410
    .local v0, "metaDataIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 411
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1000(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1200(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1300(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1000(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->notifyDataSetChanged()V

    .line 415
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$14;->val$actionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;->execute(Ljava/lang/String;)V

    goto :goto_0
.end method
