.class public final Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzdh:D

.field private zzdi:D

.field private zzdj:D

.field private zzdk:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdh:D

    .line 3
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    .line 4
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    .line 5
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdk:D

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 8

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no included points"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 22
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdh:D

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    iget-wide v6, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdk:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdh:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdh:D

    .line 7
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    .line 8
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 9
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    .line 19
    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdk:D

    .line 20
    :cond_1
    :goto_0
    return-object p0

    .line 13
    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    iget-wide v6, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdk:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_5

    .line 14
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_4

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdk:D

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_4

    .line 16
    :cond_3
    :goto_1
    if-nez v0, :cond_1

    .line 17
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->zzc(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdk:D

    invoke-static {v4, v5, v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->zzd(DD)D

    move-result-wide v4

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    .line 18
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    goto :goto_0

    :cond_4
    move v0, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_5
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    cmpg-double v4, v4, v2

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdk:D

    cmpg-double v4, v2, v4

    if-lez v4, :cond_3

    move v0, v1

    goto :goto_1
.end method
