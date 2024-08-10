.class public Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
.super Ljava/lang/Object;
.source "FlightPlanPoi.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/IJsonAble;
.implements Lcom/parrot/freeflight/flightplan/model/IMavlinkAble;


# static fields
.field public static final FLIGHTPLAN_POI_COLORS:[I

.field private static final PROPERTY_ALTITUDE:Ljava/lang/String; = "altitude"

.field private static final PROPERTY_COLOR:Ljava/lang/String; = "color"

.field private static final PROPERTY_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final PROPERTY_LONGITUDE:Ljava/lang/String; = "longitude"


# instance fields
.field private mAltitude:F

.field private mColor:I

.field private mIndex:I

.field private mLatLng:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v4, 0x4c

    const/16 v8, 0x45

    const/16 v7, 0x37

    const/16 v6, 0x34

    const/16 v5, 0x64

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb8

    .line 28
    invoke-static {v2, v4, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x144

    const/16 v3, 0x3d

    .line 29
    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xcd

    .line 30
    invoke-static {v2, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x8c

    const/16 v3, 0x30

    .line 31
    invoke-static {v2, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x166

    .line 32
    invoke-static {v2, v7, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xb9

    const/16 v3, 0x53

    const/16 v4, 0x2b

    .line 33
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9c

    const/16 v3, 0x3f

    const/16 v4, 0x48

    .line 34
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xd8

    const/16 v3, 0x53

    const/16 v4, 0x2d

    .line 35
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x144

    const/16 v3, 0x44

    .line 37
    invoke-static {v2, v8, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x8c

    const/16 v3, 0x50

    .line 38
    invoke-static {v2, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xf0

    .line 39
    invoke-static {v2, v5, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->FLIGHTPLAN_POI_COLORS:[I

    .line 42
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->FLIGHTPLAN_POI_COLORS:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(IFLcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "altitude"    # F
    .param p3, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    .line 56
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mColor:I

    .line 57
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 58
    return-void
.end method


# virtual methods
.method public createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/parrot/arsdk/armavlink/MAV_ROI;->MAV_ROI_LOCATION:Lcom/parrot/arsdk/armavlink/MAV_ROI;

    const/4 v1, 0x0

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mIndex:I

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v3, v4

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v4, v4

    iget v5, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    invoke-static/range {v0 .. v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->CreateMavlinkSetROI(Lcom/parrot/arsdk/armavlink/MAV_ROI;IIFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/4 v2, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 100
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .line 97
    .local v0, "that":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mIndex:I

    iget v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mIndex:I

    if-ne v3, v4, :cond_0

    .line 98
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 99
    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mColor:I

    iget v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mColor:I

    if-ne v3, v4, :cond_0

    .line 100
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v3, v4, v8

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v3, v4, v8

    if-gez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getAltitude()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mColor:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mIndex:I

    return v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 106
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mIndex:I

    .line 107
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 108
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mColor:I

    add-int v0, v1, v2

    .line 109
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 110
    return v0

    .line 107
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initWithJsonObject(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jsonData"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 70
    const-string v4, "altitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "altitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    :goto_0
    iput v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    .line 71
    const-string v4, "color"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "color"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :goto_1
    iput v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mColor:I

    .line 72
    const-string v4, "latitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "latitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 73
    .local v0, "lat":D
    :goto_2
    const-string v4, "longitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "longitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 74
    .local v2, "lon":D
    :goto_3
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 75
    return-void

    .line 70
    .end local v0    # "lat":D
    .end local v2    # "lon":D
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 71
    :cond_1
    sget-object v4, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->FLIGHTPLAN_POI_COLORS:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    goto :goto_1

    :cond_2
    move-wide v0, v6

    .line 72
    goto :goto_2

    .restart local v0    # "lat":D
    :cond_3
    move-wide v2, v6

    .line 73
    goto :goto_3
.end method

.method public initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V
    .locals 6
    .param p1, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getZ()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    .line 86
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getX()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getY()F

    move-result v1

    float-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 88
    return-void
.end method

.method public saveToJsonObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonData"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "latitude"

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 63
    const-string v0, "longitude"

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 64
    const-string v0, "altitude"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 65
    const-string v0, "color"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mColor:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    return-void
.end method

.method public setAltitude(F)V
    .locals 0
    .param p1, "altitude"    # F

    .prologue
    .line 118
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mAltitude:F

    .line 119
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mColor:I

    .line 127
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mIndex:I

    .line 144
    return-void
.end method

.method public setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 136
    return-void
.end method
