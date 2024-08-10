.class public Lcom/parrot/freeflight/map/Geofence;
.super Ljava/lang/Object;
.source "Geofence.java"


# instance fields
.field private final mAlertColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final mDefaultColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mLatitude:D

.field private mLongitude:D

.field private mMap:Lcom/parrot/freeflight/map/IMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRadius:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, 0x7f050129

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/map/Geofence;->mDefaultColor:I

    .line 30
    const v0, 0x7f0500bd

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/map/Geofence;->mAlertColor:I

    .line 32
    iget v0, p0, Lcom/parrot/freeflight/map/Geofence;->mDefaultColor:I

    iput v0, p0, Lcom/parrot/freeflight/map/Geofence;->mColor:I

    .line 33
    return-void
.end method

.method private invalidate()V
    .locals 9

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/map/Geofence;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/Geofence;->clear()V

    .line 79
    iget-object v1, p0, Lcom/parrot/freeflight/map/Geofence;->mMap:Lcom/parrot/freeflight/map/IMap;

    iget-wide v2, p0, Lcom/parrot/freeflight/map/Geofence;->mLatitude:D

    iget-wide v4, p0, Lcom/parrot/freeflight/map/Geofence;->mLongitude:D

    iget-wide v6, p0, Lcom/parrot/freeflight/map/Geofence;->mRadius:D

    iget v8, p0, Lcom/parrot/freeflight/map/Geofence;->mColor:I

    invoke-interface/range {v1 .. v8}, Lcom/parrot/freeflight/map/IMap;->addPolygonWithHole(DDDI)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/map/Geofence;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/map/Geofence;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMap;->clear()V

    .line 74
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lcom/parrot/freeflight/map/Geofence;->mRadius:D

    .line 65
    iput-wide v0, p0, Lcom/parrot/freeflight/map/Geofence;->mLatitude:D

    .line 66
    iput-wide v0, p0, Lcom/parrot/freeflight/map/Geofence;->mLongitude:D

    .line 67
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/Geofence;->clear()V

    .line 68
    return-void
.end method

.method public setAlertState(Z)V
    .locals 2
    .param p1, "onAlert"    # Z

    .prologue
    .line 47
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/map/Geofence;->mAlertColor:I

    .line 48
    .local v0, "color":I
    :goto_0
    iget v1, p0, Lcom/parrot/freeflight/map/Geofence;->mColor:I

    if-eq v1, v0, :cond_0

    .line 49
    iput v0, p0, Lcom/parrot/freeflight/map/Geofence;->mColor:I

    .line 50
    invoke-direct {p0}, Lcom/parrot/freeflight/map/Geofence;->invalidate()V

    .line 52
    :cond_0
    return-void

    .line 47
    .end local v0    # "color":I
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/map/Geofence;->mDefaultColor:I

    goto :goto_0
.end method

.method public setGeofence(DDD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/parrot/freeflight/map/Geofence;->mLatitude:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/parrot/freeflight/map/Geofence;->mLongitude:D

    cmpl-double v0, v0, p3

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/parrot/freeflight/map/Geofence;->mRadius:D

    cmpl-double v0, v0, p5

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    iput-wide p5, p0, Lcom/parrot/freeflight/map/Geofence;->mRadius:D

    .line 57
    iput-wide p1, p0, Lcom/parrot/freeflight/map/Geofence;->mLatitude:D

    .line 58
    iput-wide p3, p0, Lcom/parrot/freeflight/map/Geofence;->mLongitude:D

    .line 59
    invoke-direct {p0}, Lcom/parrot/freeflight/map/Geofence;->invalidate()V

    .line 61
    :cond_1
    return-void
.end method

.method public setMap(Lcom/parrot/freeflight/map/IMap;)V
    .locals 0
    .param p1, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/map/Geofence;->mMap:Lcom/parrot/freeflight/map/IMap;

    .line 37
    return-void
.end method

.method public setRadius(D)V
    .locals 3
    .param p1, "radius"    # D

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/parrot/freeflight/map/Geofence;->mRadius:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    .line 41
    iput-wide p1, p0, Lcom/parrot/freeflight/map/Geofence;->mRadius:D

    .line 42
    invoke-direct {p0}, Lcom/parrot/freeflight/map/Geofence;->invalidate()V

    .line 44
    :cond_0
    return-void
.end method
