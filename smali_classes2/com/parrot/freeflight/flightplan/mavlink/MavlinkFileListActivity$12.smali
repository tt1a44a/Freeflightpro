.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;
.super Ljava/lang/Object;
.source "MavlinkFileListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->showDeleteConfirmationDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

.field final synthetic val$selectedItemPosition:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    iput p2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->val$selectedItemPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 346
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1000(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    move-result-object v2

    iget v3, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->val$selectedItemPosition:I

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    .line 347
    .local v0, "item":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "uuid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 350
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1100(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Ljava/io/File;)V

    .line 351
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1000(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->remove(Ljava/lang/Object;)V

    .line 352
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1000(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->notifyDataSetChanged()V

    .line 353
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$300(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)V

    .line 354
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$100(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;I)V

    .line 355
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1200(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getUuidInWorking()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$12;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->access$1200(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setUuid(Ljava/lang/String;)V

    .line 360
    .end local v1    # "uuid":Ljava/lang/String;
    :cond_0
    return-void
.end method
