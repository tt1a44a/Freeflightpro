.class public Lcom/parrot/freeflight/map/google/GoogleMapWrapper;
.super Ljava/lang/Object;
.source "GoogleMapWrapper.java"

# interfaces
.implements Lcom/parrot/freeflight/map/IMap;


# instance fields
.field private mCameraPositionBuilder:Lcom/google/android/gms/maps/model/CameraPosition$Builder;

.field private final mMap:Lcom/google/android/gms/maps/GoogleMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mCameraPositionBuilder:Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 41
    return-void
.end method

.method private createHole(Lcom/google/android/gms/maps/model/LatLng;F)Ljava/lang/Iterable;
    .locals 22
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "F)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    const/16 v5, 0x32

    .line 309
    .local v5, "points":I
    const v15, 0x4ac26d70    # 6371000.0f

    div-float v15, p2, v15

    float-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    .line 310
    .local v10, "radiusLatitude":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    div-double v12, v10, v18

    .line 312
    .local v12, "radiusLongitude":D
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, v5

    move-wide/from16 v20, v0

    div-double v2, v18, v20

    .line 316
    .local v2, "anglePerCircleRegion":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 317
    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v18, v2

    .line 318
    .local v16, "theta":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v10

    add-double v6, v18, v20

    .line 319
    .local v6, "latitude":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v12

    add-double v8, v18, v20

    .line 321
    .local v8, "longitude":D
    new-instance v15, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v15, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 324
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v16    # "theta":D
    :cond_0
    return-object v14
.end method

.method private createOuterBounds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    const v0, 0x3c23d70a    # 0.01f

    .line 293
    .local v0, "delta":F
    new-instance v1, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;-><init>(Lcom/parrot/freeflight/map/google/GoogleMapWrapper;)V

    return-object v1
.end method

.method private createPolygonWithCircle(Lcom/google/android/gms/maps/model/LatLng;FI)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 2
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # F
    .param p3, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 283
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    .line 284
    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    .line 285
    invoke-direct {p0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->createOuterBounds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->createHole(Lcom/google/android/gms/maps/model/LatLng;F)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    .line 283
    return-object v0
.end method


# virtual methods
.method public addMarker(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;F)Lcom/parrot/freeflight/map/IMarker;
    .locals 5
    .param p1, "position"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rotation"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 260
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 261
    .local v0, "markOpts":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 262
    iget-object v2, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 263
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    new-instance v2, Lcom/parrot/freeflight/map/google/GoogleMarker;

    invoke-direct {v2, v1}, Lcom/parrot/freeflight/map/google/GoogleMarker;-><init>(Lcom/google/android/gms/maps/model/Marker;)V

    return-object v2
.end method

.method public addPolygonWithHole(DDDI)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D
    .param p7, "color"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    double-to-float v2, p5

    invoke-direct {p0, v1, v2, p7}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->createPolygonWithCircle(Lcom/google/android/gms/maps/model/LatLng;FI)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    .line 280
    return-void
.end method

.method public addPolyline(ZFLjava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "geodesic"    # Z
    .param p2, "width"    # F
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p3, "positions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    .local p4, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 270
    new-instance v2, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    .line 271
    .local v1, "line":Lcom/google/android/gms/maps/model/PolylineOptions;
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 272
    iget-object v2, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "i":I
    .end local v1    # "line":Lcom/google/android/gms/maps/model/PolylineOptions;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 330
    return-void
.end method

.method public getBound()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getMapType()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    return v0
.end method

.method public getNormalizedZoom(F)F
    .locals 0
    .param p1, "zoom"    # F

    .prologue
    .line 243
    return p1
.end method

.method public getProjection()Lcom/parrot/freeflight/map/IProjection;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    .line 155
    .local v0, "proj":Lcom/google/android/gms/maps/Projection;
    new-instance v1, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$3;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$3;-><init>(Lcom/parrot/freeflight/map/google/GoogleMapWrapper;Lcom/google/android/gms/maps/Projection;)V

    return-object v1
.end method

.method public isMapLoadMayBeFailed()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public moveCamera(DDZ)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "animate"    # Z

    .prologue
    .line 189
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 190
    .local v0, "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    if-eqz p5, :cond_0

    .line 191
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public moveCamera(Lcom/google/android/gms/maps/model/CameraPosition;Z)V
    .locals 2
    .param p1, "cameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .prologue
    .line 179
    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 180
    .local v0, "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    if-eqz p2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public moveCamera(Lcom/google/android/gms/maps/model/LatLng;FFZ)V
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "zoom"    # F
    .param p3, "bearing"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 223
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mCameraPositionBuilder:Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 224
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1, p3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    .line 228
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mCameraPositionBuilder:Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 229
    .local v0, "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    if-eqz p4, :cond_0

    .line 230
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v2, 0xfa

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IIIZ)V
    .locals 4
    .param p1, "bounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "padding"    # I
    .param p5, "animate"    # Z

    .prologue
    .line 210
    iget v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mPaddingLeft:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mPaddingTop:I

    add-int/2addr v2, p3

    iget v3, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mPaddingBottom:I

    add-int/2addr v2, v3

    invoke-static {p1, v1, v2, p4}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 214
    .local v0, "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    if-eqz p5, :cond_0

    .line 215
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IZ)V
    .locals 4
    .param p1, "bounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "padding"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 199
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 200
    .local v0, "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    if-eqz p3, :cond_0

    .line 201
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 96
    return-void
.end method

.method public setBuildingsEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setBuildingsEnabled(Z)V

    .line 61
    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 51
    return-void
.end method

.method public setIndoorEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setIndoorEnabled(Z)Z

    .line 71
    return-void
.end method

.method public setMapType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 110
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 56
    return-void
.end method

.method public setOnCameraIdleListener(Lcom/parrot/freeflight/map/ICameraChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/map/ICameraChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$1;-><init>(Lcom/parrot/freeflight/map/google/GoogleMapWrapper;Lcom/parrot/freeflight/map/ICameraChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    goto :goto_0
.end method

.method public setOnCameraMoveListener(Lcom/parrot/freeflight/map/ICameraChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/map/ICameraChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$2;-><init>(Lcom/parrot/freeflight/map/google/GoogleMapWrapper;Lcom/parrot/freeflight/map/ICameraChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;)V

    .line 144
    return-void
.end method

.method public setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 115
    return-void
.end method

.method public setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 91
    return-void
.end method

.method public setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 120
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 100
    iput p2, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mPaddingTop:I

    .line 101
    iput p4, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mPaddingBottom:I

    .line 102
    iput p1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mPaddingLeft:I

    .line 103
    iput p3, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mPaddingRight:I

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 105
    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 81
    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 76
    return-void
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 86
    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setTrafficEnabled(Z)V

    .line 66
    return-void
.end method

.method public snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    .line 249
    return-void
.end method

.method public zoomTo(I)V
    .locals 2
    .param p1, "zoom"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    int-to-float v1, p1

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 239
    return-void
.end method
