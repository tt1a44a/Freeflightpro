.class Lcom/parrot/freeflight/map/MapManager$1;
.super Ljava/lang/Object;
.source "MapManager.java"

# interfaces
.implements Lcom/parrot/freeflight/map/IOnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/MapManager;->init(Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/MapManager;

.field final synthetic val$enableGestures:Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/MapManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/MapManager;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    iput-boolean p2, p0, Lcom/parrot/freeflight/map/MapManager$1;->val$enableGestures:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/parrot/freeflight/map/IMap;)V
    .locals 7
    .param p1, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 60
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    iput-object p1, v4, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    .line 61
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    iget-object v4, v4, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lcom/parrot/freeflight/map/IMap;->setMapType(I)V

    .line 62
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    iget-object v4, v4, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/parrot/freeflight/map/IMap;->setBuildingsEnabled(Z)V

    .line 63
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    iget-object v4, v4, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v4, v6}, Lcom/parrot/freeflight/map/IMap;->setIndoorEnabled(Z)V

    .line 64
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    iget-object v4, v4, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v4, v6}, Lcom/parrot/freeflight/map/IMap;->setTrafficEnabled(Z)V

    .line 65
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    iget-object v4, v4, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    iget-boolean v5, p0, Lcom/parrot/freeflight/map/MapManager$1;->val$enableGestures:Z

    invoke-interface {v4, v5}, Lcom/parrot/freeflight/map/IMap;->setAllGesturesEnabled(Z)V

    .line 66
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    iget-object v4, v4, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v4, v6}, Lcom/parrot/freeflight/map/IMap;->setMyLocationEnabled(Z)V

    .line 69
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    iget-object v4, v4, Lcom/parrot/freeflight/map/MapManager;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v4}, Lcom/parrot/freeflight/map/IMapView;->getView()Landroid/view/View;

    move-result-object v3

    .line 70
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    .local v1, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0602aa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0602ad

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v2, v4, v5

    .line 72
    .local v2, "topBarHeight":I
    const v4, 0x7f06008a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 73
    .local v0, "bottomBarHeight":I
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    iget-object v4, v4, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v4, v6, v2, v6, v0}, Lcom/parrot/freeflight/map/IMap;->setPadding(IIII)V

    .line 75
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v5, v0

    iput v5, v4, Lcom/parrot/freeflight/map/MapManager;->mVisibleHeight:I

    .line 77
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    invoke-virtual {v4}, Lcom/parrot/freeflight/map/MapManager;->initMap()V

    .line 79
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapManager$1;->this$0:Lcom/parrot/freeflight/map/MapManager;

    invoke-virtual {v4}, Lcom/parrot/freeflight/map/MapManager;->mapReady()V

    .line 80
    return-void
.end method
