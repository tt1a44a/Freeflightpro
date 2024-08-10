.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$10;
.super Lcom/parrot/freeflight/piloting/utils/AnimationAdapter;
.source "MapUIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/location/SmartLocationManager;Landroid/view/View;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/map/IMapView;Lcom/parrot/freeflight/map/RadarMapView;Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/utils/AnimationAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)V

    .line 416
    return-void
.end method
