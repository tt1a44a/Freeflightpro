.class Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;
.super Ljava/lang/Object;
.source "PilotingHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/map/IOnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->initMap()V
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
    .line 1355
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/parrot/freeflight/map/IMap;)V
    .locals 2
    .param p1, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 1358
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$1302(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;Lcom/parrot/freeflight/map/IMap;)Lcom/parrot/freeflight/map/IMap;

    .line 1359
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$1400(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)Lcom/parrot/freeflight/map/GLMapLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/GLMapLayout;->setIMap(Lcom/parrot/freeflight/map/IMap;)V

    .line 1361
    invoke-interface {p1, v1}, Lcom/parrot/freeflight/map/IMap;->setCompassEnabled(Z)V

    .line 1362
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$1000(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    .line 1363
    invoke-interface {p1, v1}, Lcom/parrot/freeflight/map/IMap;->setTiltGesturesEnabled(Z)V

    .line 1364
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapOverlayButton:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22$1;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1370
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mMapTinyView:Landroid/widget/ImageView;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22$2;-><init>(Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1377
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$900(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    .line 1378
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->access$1500(Lcom/parrot/freeflight/piloting/ui/PilotingHudView;)V

    .line 1380
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    iget v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->mLaunchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enterMapMode()V

    .line 1382
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingHudView$22;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingHudView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingHudView;->enterFlightPlanMode()V

    .line 1384
    :cond_0
    return-void
.end method
