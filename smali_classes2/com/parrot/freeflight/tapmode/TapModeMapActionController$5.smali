.class Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;
.super Ljava/lang/Object;
.source "TapModeMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapScroll(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 157
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 159
    .local v7, "y":I
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$200(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v8

    invoke-interface {v8}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v3

    .line 160
    .local v3, "mapProjection":Lcom/parrot/freeflight/map/IProjection;
    const/4 v2, 0x0

    .line 162
    .local v2, "eventHold":Z
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$800(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 163
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$900(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->getUnitConverter()Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    move-result-object v5

    .line 164
    .local v5, "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8, v6, v7}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$1000(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 165
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$1100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;

    move-result-object v8

    int-to-float v9, v6

    invoke-virtual {v5, v9}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToSceneSpace(F)F

    move-result v9

    int-to-float v10, v7

    invoke-virtual {v5, v10}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;->find(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    move-result-object v0

    .line 166
    .local v0, "clickedObject":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    if-eqz v0, :cond_1

    .line 168
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$400(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)F

    move-result v8

    iget-object v9, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v9}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$500(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)F

    move-result v9

    int-to-float v10, v6

    int-to-float v11, v7

    iget-object v12, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v12}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$1200(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)F

    move-result v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/parrot/freeflight/util/Geometry;->pointInsideCircle(FFFFF)Z

    move-result v8

    if-nez v8, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->getObject3D()Lcom/parrot/engine3d/objects/GLObject3D;

    move-result-object v1

    .line 170
    .local v1, "clickedObject3D":Lcom/parrot/engine3d/objects/GLObject3D;
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    check-cast v1, Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    .end local v1    # "clickedObject3D":Lcom/parrot/engine3d/objects/GLObject3D;
    invoke-static {v8, v1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$102(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    .line 171
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setDragging(Z)V

    .line 173
    :cond_0
    const/4 v2, 0x1

    .line 176
    .end local v0    # "clickedObject":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    :cond_1
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 178
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$400(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)F

    move-result v8

    iget-object v9, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v9}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$500(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)F

    move-result v9

    int-to-float v10, v6

    int-to-float v11, v7

    iget-object v12, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v12}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$1200(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)F

    move-result v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/parrot/freeflight/util/Geometry;->pointInsideCircle(FFFFF)Z

    move-result v8

    if-nez v8, :cond_2

    .line 179
    int-to-float v8, v7

    invoke-virtual {v5, v8}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v8

    invoke-virtual {v5, v8}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToScreenSpace(F)F

    move-result v8

    float-to-int v4, v8

    .line 180
    .local v4, "newYPosition":I
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v3, v9}, Lcom/parrot/freeflight/map/IProjection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$702(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 181
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->isPOI()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 182
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    iget-object v9, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v9}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$700(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$1300(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 187
    .end local v4    # "newYPosition":I
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 191
    .end local v5    # "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    :cond_3
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$900(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v9}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$200(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v9

    invoke-interface {v9}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->onMapCameraChanged(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 192
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$1500(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/map/MapGLRenderingView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 193
    return v2

    .line 183
    .restart local v4    # "newYPosition":I
    .restart local v5    # "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    :cond_4
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v8}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->isWayPoint()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 184
    iget-object v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    iget-object v9, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v9}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$700(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$1400(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method
