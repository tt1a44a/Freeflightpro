.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$11;
.super Ljava/lang/Object;
.source "MavlinkFileListActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->onLoadClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

.field final synthetic val$item:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$11;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$11;->val$item:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_EXTRA_UUID"

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$11;->val$item:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$11;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->setResult(ILandroid/content/Intent;)V

    .line 283
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$11;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    .line 284
    return-void
.end method
