.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$23;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->initMapUiController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$23;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderButtonClick(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V
    .locals 3
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mapInfo"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$23;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$23;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1462
    return-void
.end method

.method public onTimelineClick(I)V
    .locals 2
    .param p1, "selectedWayPointIndex"    # I

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$23;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$23;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->getStartingIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1457
    return-void
.end method
