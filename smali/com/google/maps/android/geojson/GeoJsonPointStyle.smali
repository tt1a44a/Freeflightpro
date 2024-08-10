.class public Lcom/google/maps/android/geojson/GeoJsonPointStyle;
.super Ljava/util/Observable;
.source "GeoJsonPointStyle.java"

# interfaces
.implements Lcom/google/maps/android/geojson/GeoJsonStyle;


# static fields
.field private static final GEOMETRY_TYPE:[Ljava/lang/String;


# instance fields
.field private final mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Point"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MultiPoint"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GeometryCollection"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 27
    return-void
.end method

.method private styleChanged()V
    .locals 0

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->setChanged()V

    .line 272
    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->notifyObservers()V

    .line 273
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    move-result v0

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    move-result v0

    return v0
.end method

.method public getGeometryType()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInfoWindowAnchorU()F
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorU()F

    move-result v0

    return v0
.end method

.method public getInfoWindowAnchorV()F
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorV()F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v0

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isFlat()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 53
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->styleChanged()V

    .line 54
    return-void
.end method

.method public setAnchor(FF)V
    .locals 1
    .param p1, "anchorU"    # F
    .param p2, "anchorV"    # F

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 91
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->styleChanged()V

    .line 92
    return-void
.end method

.method public setDraggable(Z)V
    .locals 1
    .param p1, "draggable"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 110
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->styleChanged()V

    .line 111
    return-void
.end method

.method public setFlat(Z)V
    .locals 1
    .param p1, "flat"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 129
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->styleChanged()V

    .line 130
    return-void
.end method

.method public setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .locals 1
    .param p1, "bitmap"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 148
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->styleChanged()V

    .line 149
    return-void
.end method

.method public setInfoWindowAnchor(FF)V
    .locals 1
    .param p1, "infoWindowAnchorU"    # F
    .param p2, "infoWindowAnchorV"    # F

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 184
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->styleChanged()V

    .line 185
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 204
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->styleChanged()V

    .line 205
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 1
    .param p1, "snippet"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 223
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->styleChanged()V

    .line 224
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 242
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->styleChanged()V

    .line 243
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 263
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->styleChanged()V

    .line 264
    return-void
.end method

.method public toMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 3

    .prologue
    .line 281
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 282
    .local v0, "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 283
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 284
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->isDraggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 285
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->isFlat()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 286
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 287
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorU()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorV()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 289
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 290
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 291
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 292
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 293
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PointStyle{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n geometry type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, ",\n alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, ",\n anchor U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->getAnchorU()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, ",\n anchor V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->getAnchorV()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ",\n draggable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->isDraggable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, ",\n flat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->isFlat()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, ",\n info window anchor U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->getInfoWindowAnchorU()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, ",\n info window anchor V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->getInfoWindowAnchorV()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, ",\n rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->getRotation()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, ",\n snippet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, ",\n title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, ",\n visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
