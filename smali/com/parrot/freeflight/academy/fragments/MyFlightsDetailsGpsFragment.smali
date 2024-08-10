.class public Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
.super Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;
.source "MyFlightsDetailsGpsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;,
        Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MapReadyListener;
    }
.end annotation


# static fields
.field private static final END_EXTREMITY:Ljava/lang/String; = "E"

.field private static final LINE_WIDTH:I = 0x2

.field private static final MAP_BOUNDS_PADDING:I = 0x64

.field private static final MAP_TYPE_HYBRID_LEVEL:I = 0x2

.field private static final MAP_TYPE_NORMAL_LEVEL:I = 0x0

.field private static final MAP_TYPE_SATELLITE_LEVEL:I = 0x1

.field private static final MAX_ALTITUDE_COLOR:I

.field private static final MAX_LATITUDE:I = 0x5a

.field private static final MAX_LONGITUDE:I = 0xb4

.field private static final MAX_NUMBER_OF_POINTS_DISPLAYED:I = 0xc8

.field private static final MIN_ALTITUDE_COLOR:I

.field private static final SAVED_MAP_TYPE:Ljava/lang/String; = "saved map type"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "my flights details map preferences"

.field private static final START_EXTREMITY:Ljava/lang/String; = "S"


# instance fields
.field private mBounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentMapType:I

.field private mExtremityTextSize:F

.field private mIsLayoutRendered:Z

.field private mLineWidth:F

.field private mMap:Lcom/parrot/freeflight/map/IMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMapTypeButton:Landroid/widget/ImageButton;

.field private mMapView:Lcom/parrot/freeflight/map/IMapView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMaxAltitude:F

.field private final mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMinAltitude:F

.field private final mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootView:Landroid/view/View;

.field private mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x33

    const/16 v1, 0xbd

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->MIN_ALTITUDE_COLOR:I

    .line 58
    const/16 v0, 0xeb

    const/16 v1, 0xa

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->MAX_ALTITUDE_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    .line 64
    new-instance v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, -0x3f99800000000000L    # -180.0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCurrentMapType:I

    .line 78
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    .line 79
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxAltitude:F

    .line 83
    new-instance v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$1;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mIsLayoutRendered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->moveCamera()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCurrentMapType:I

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->updateMapType(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;Lcom/parrot/freeflight/map/IMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
    .param p1, "x1"    # Lcom/parrot/freeflight/map/IMap;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->setMap(Lcom/parrot/freeflight/map/IMap;)V

    return-void
.end method

.method private displayFlight()V
    .locals 18

    .prologue
    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getRunDetails()Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;

    move-result-object v8

    .line 181
    .local v8, "runDetails":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v12, :cond_2

    .line 182
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v9

    .line 184
    .local v9, "runDetailsData":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 186
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->filterData(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 188
    .local v4, "filteredRunDetailsData":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 190
    .local v6, "listSize":I
    const/4 v11, 0x1

    .line 191
    .local v11, "step":I
    const/16 v12, 0xc8

    if-le v6, v12, :cond_0

    .line 192
    div-int/lit16 v12, v6, 0xc8

    add-int/2addr v11, v12

    .line 195
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12, v14}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getExtremityMarker(Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;Z)V

    .line 200
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    div-int v10, v12, v11

    .line 201
    .local v10, "size":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v7, "positions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v2, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 205
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;

    .line 206
    .local v3, "detail":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;
    new-instance v12, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v14

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getAltitude()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getColorForAltitude(FZ)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/2addr v5, v11

    goto :goto_0

    .line 209
    .end local v3    # "detail":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mLineWidth:F

    invoke-interface {v12, v13, v14, v7, v2}, Lcom/parrot/freeflight/map/IMap;->addPolyline(ZFLjava/util/List;Ljava/util/List;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12, v14}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getExtremityMarker(Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;Z)V

    .line 214
    new-instance v12, Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    invoke-virtual {v13}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    invoke-virtual {v14}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->moveCamera()V

    .line 219
    .end local v2    # "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "filteredRunDetailsData":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;>;"
    .end local v5    # "i":I
    .end local v6    # "listSize":I
    .end local v7    # "positions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    .end local v9    # "runDetailsData":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;>;"
    .end local v10    # "size":I
    .end local v11    # "step":I
    :cond_2
    return-void
.end method

.method private filterData(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v2, "filteredDataList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;>;"
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 311
    .local v8, "previousLatitude":D
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 313
    .local v10, "previousLongitude":D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;

    .line 314
    .local v1, "data":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v4

    .line 315
    .local v4, "latitude":D
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v6

    .line 317
    .local v6, "longitude":D
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->isPositionInvalid(DD)Z

    move-result v12

    if-nez v12, :cond_0

    .line 321
    cmpl-double v12, v4, v8

    if-nez v12, :cond_1

    cmpl-double v12, v6, v10

    if-eqz v12, :cond_0

    .line 322
    :cond_1
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->updateLatLngBounds(DD)V

    .line 324
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getAltitude()I

    move-result v12

    int-to-float v0, v12

    .line 325
    .local v0, "altitude":F
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->updateAltitudeBounds(F)V

    .line 327
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    move-wide v8, v4

    .line 330
    move-wide v10, v6

    goto :goto_0

    .line 333
    .end local v0    # "altitude":F
    .end local v1    # "data":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    :cond_2
    return-object v2
.end method

.method private getColorForAltitude(FZ)I
    .locals 11
    .param p1, "altitude"    # F
    .param p2, "counterClockwise"    # Z

    .prologue
    .line 253
    iget v8, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxAltitude:F

    iget v9, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 254
    const/high16 v6, 0x3f800000    # 1.0f

    .line 264
    .local v6, "ratio":F
    :goto_0
    const/4 v8, 0x3

    new-array v7, v8, [F

    .line 265
    .local v7, "wantedColorHsv":[F
    const/4 v8, 0x3

    new-array v4, v8, [F

    .line 266
    .local v4, "minAltitudeColorHsv":[F
    const/4 v8, 0x3

    new-array v2, v8, [F

    .line 267
    .local v2, "maxAltitudeColorHsv":[F
    sget v8, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->MIN_ALTITUDE_COLOR:I

    invoke-static {v8, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 268
    sget v8, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->MAX_ALTITUDE_COLOR:I

    invoke-static {v8, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 271
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/4 v8, 0x3

    if-ge v1, v8, :cond_1

    .line 272
    aget v8, v4, v1

    aget v9, v2, v1

    aget v10, v4, v1

    sub-float/2addr v9, v10

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v7, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    .end local v1    # "i":I
    .end local v2    # "maxAltitudeColorHsv":[F
    .end local v4    # "minAltitudeColorHsv":[F
    .end local v6    # "ratio":F
    .end local v7    # "wantedColorHsv":[F
    :cond_0
    iget v8, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    sub-float v8, p1, v8

    iget v9, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxAltitude:F

    iget v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    sub-float/2addr v9, v10

    div-float v6, v8, v9

    .restart local v6    # "ratio":F
    goto :goto_0

    .line 280
    .restart local v1    # "i":I
    .restart local v2    # "maxAltitudeColorHsv":[F
    .restart local v4    # "minAltitudeColorHsv":[F
    .restart local v7    # "wantedColorHsv":[F
    :cond_1
    const/4 v8, 0x0

    aget v5, v4, v8

    .line 281
    .local v5, "minH":F
    const/4 v8, 0x0

    aget v3, v2, v8

    .line 283
    .local v3, "maxH":F
    if-nez p2, :cond_3

    .line 284
    cmpg-float v8, v5, v3

    if-gtz v8, :cond_2

    .line 285
    sub-float v0, v3, v5

    .line 286
    .local v0, "hueDiff":F
    const/4 v8, 0x0

    mul-float v9, v6, v0

    add-float/2addr v9, v5

    aput v9, v7, v8

    .line 301
    :goto_2
    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    return v8

    .line 288
    .end local v0    # "hueDiff":F
    :cond_2
    const/high16 v8, 0x43b40000    # 360.0f

    sub-float v9, v5, v3

    sub-float v0, v8, v9

    .line 289
    .restart local v0    # "hueDiff":F
    const/4 v8, 0x0

    mul-float v9, v6, v0

    add-float/2addr v9, v5

    const/high16 v10, 0x43b40000    # 360.0f

    rem-float/2addr v9, v10

    aput v9, v7, v8

    goto :goto_2

    .line 292
    .end local v0    # "hueDiff":F
    :cond_3
    cmpg-float v8, v5, v3

    if-gtz v8, :cond_4

    .line 293
    const/high16 v8, 0x43b40000    # 360.0f

    sub-float v9, v3, v5

    sub-float v0, v8, v9

    .line 294
    .restart local v0    # "hueDiff":F
    const/4 v8, 0x0

    const/high16 v9, 0x43b40000    # 360.0f

    add-float/2addr v9, v5

    mul-float v10, v6, v0

    sub-float/2addr v9, v10

    const/high16 v10, 0x43b40000    # 360.0f

    rem-float/2addr v9, v10

    aput v9, v7, v8

    goto :goto_2

    .line 296
    .end local v0    # "hueDiff":F
    :cond_4
    sub-float v0, v5, v3

    .line 297
    .restart local v0    # "hueDiff":F
    const/4 v8, 0x0

    mul-float v9, v6, v0

    sub-float v9, v5, v9

    aput v9, v7, v8

    goto :goto_2
.end method

.method private getExtremityMarker(Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;Z)V
    .locals 12
    .param p1, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "startingExtremity"    # Z

    .prologue
    const/4 v10, 0x1

    .line 228
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070219

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 230
    .local v2, "extremity":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 233
    .local v3, "paint":Landroid/graphics/Paint;
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 234
    iget v8, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mExtremityTextSize:F

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 235
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getAltitude()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {p0, v8, v10}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getColorForAltitude(FZ)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float v6, v8, v9

    .line 238
    .local v6, "textSize":F
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v6, v9

    sub-float v5, v8, v9

    .line 239
    .local v5, "textBaselineDiff":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v7, v8, v5

    .line 241
    .local v7, "yPos":F
    if-eqz p3, :cond_0

    .line 242
    const-string v8, "S"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1, v8, v9, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 246
    :goto_0
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v8

    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v10

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 247
    .local v4, "position":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v8, 0x0

    invoke-interface {p1, v4, v2, v8}, Lcom/parrot/freeflight/map/IMap;->addMarker(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;F)Lcom/parrot/freeflight/map/IMarker;

    .line 248
    return-void

    .line 244
    .end local v4    # "position":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    const-string v8, "E"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1, v8, v9, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private isPositionInvalid(DD)Z
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 337
    cmpl-double v0, p1, v2

    if-eqz v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-double v0, p3, v2

    if-eqz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveCamera()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mIsLayoutRendered:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/parrot/freeflight/map/IMap;->moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IZ)V

    .line 225
    :cond_0
    return-void
.end method

.method private setMap(Lcom/parrot/freeflight/map/IMap;)V
    .locals 4
    .param p1, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 394
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    .line 396
    const/4 v0, 0x2

    .line 398
    .local v0, "mapType":I
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "saved map type"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 402
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->updateMapType(IZ)V

    .line 404
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->displayFlight()V

    .line 405
    return-void
.end method

.method private updateAltitudeBounds(F)V
    .locals 1
    .param p1, "altitude"    # F

    .prologue
    .line 357
    iget v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 358
    iput p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinAltitude:F

    .line 360
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxAltitude:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 361
    iput p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxAltitude:F

    .line 363
    :cond_1
    return-void
.end method

.method private updateLatLngBounds(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 342
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iget-wide v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->latitude:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iput-wide p1, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->latitude:D

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iget-wide v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->latitude:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iput-wide p1, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->latitude:D

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iget-wide v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->longitude:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMinLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iput-wide p3, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->longitude:D

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iget-wide v0, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->longitude:D

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMaxLatLng:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;

    iput-wide p3, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->longitude:D

    .line 354
    :cond_3
    return-void
.end method

.method private updateMapType(IZ)V
    .locals 3
    .param p1, "mapType"    # I
    .param p2, "saveInSharedPrefs"    # Z

    .prologue
    .line 366
    iput p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCurrentMapType:I

    .line 368
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 369
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "saved map type"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    iget v2, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCurrentMapType:I

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/map/IMap;->setMapType(I)V

    .line 374
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 376
    .local v0, "mapTypeButtonDrawable":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mCurrentMapType:I

    packed-switch v1, :pswitch_data_0

    .line 391
    .end local v0    # "mapTypeButtonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 378
    .restart local v0    # "mapTypeButtonDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 381
    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 384
    :pswitch_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my flights details map preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 97
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mExtremityTextSize:F

    .line 98
    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mLineWidth:F

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    const v0, 0x7f0c00ce

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/ImageButton;

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$2;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/map/MapViewFactory;->create(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0, p3}, Lcom/parrot/freeflight/map/IMapView;->onCreate(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    new-instance v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MapReadyListener;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MapReadyListener;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMapView;->getMapAsync(Lcom/parrot/freeflight/map/IOnMapReadyCallback;)V

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapTypeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onDestroy()V

    .line 169
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onLowMemory()V

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onLowMemory()V

    .line 177
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onPause()V

    .line 161
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onResume()V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->displayFlight()V

    .line 145
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/map/IMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    :cond_0
    return-void
.end method

.method public shareMap()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->mMap:Lcom/parrot/freeflight/map/IMap;

    new-instance v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$3;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    goto :goto_0
.end method
