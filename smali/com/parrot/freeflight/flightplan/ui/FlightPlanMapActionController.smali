.class public Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
.super Ljava/lang/Object;
.source "FlightPlanMapActionController.java"


# static fields
.field private static final MAP_TOUCH_PRIORITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FPMapActionController"


# instance fields
.field private mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mClickedObjectFinder:Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEditingYaw:Z

.field private mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHoldObject:Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mMap:Lcom/parrot/freeflight/map/IMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapHeight:I

.field private mMapInteractionBottomPadding:I

.field private mMapInteractionPadding:I

.field private mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapWidth:I

.field private mOldPosition:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOldYaw:F

.field private final mOnAltitudeEditListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;

.field private final mOnMapClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;

.field private final mOnMapLongClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;

.field private final mOnMapScrollListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

.field private final mOnMapSizeChangedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;

.field private final mOnMapTouchDownListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;

.field private final mOnMapTouchUpListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;

.field private final mOnSpeedEditListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;

.field private mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPoiRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

.field private mPrevSelectedPoiIndex:I

.field private mPrevSelectedWpIndex:I

.field private final mRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedLineIndex:I

.field private mSelectedPoiIndex:I

.field private mSelectedWpIndex:I

.field private final mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWayPointRadius:F

.field private mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "glRenderingView"    # Lcom/parrot/freeflight/map/MapGLRenderingView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "glScene"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "mapLayout"    # Lcom/parrot/freeflight/map/GLMapLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "dataCenter"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "planProductCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "uiLayerUpdater"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedWpIndex:I

    .line 116
    iput v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    .line 118
    iput v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedPoiIndex:I

    .line 119
    iput v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    .line 121
    iput v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedLineIndex:I

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mEditingYaw:Z

    .line 209
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;

    .line 217
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$2;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapLongClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;

    .line 227
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$3;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapTouchDownListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;

    .line 235
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapTouchUpListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;

    .line 255
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapScrollListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

    .line 319
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$6;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapSizeChangedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;

    .line 1143
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    .line 1174
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    .line 1258
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnSpeedEditListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;

    .line 1276
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnAltitudeEditListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;

    .line 140
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    .line 142
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    .line 143
    iput-object p4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    .line 144
    iput-object p5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMap:Lcom/parrot/freeflight/map/IMap;

    .line 146
    iput-object p6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .line 147
    iput-object p7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 148
    iput-object p8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 149
    iput-object p9, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    .line 151
    new-instance v1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    invoke-direct {v1}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/util/Screen;->getDensityFactor(Landroid/content/res/Resources;)F

    move-result v0

    .line 154
    .local v0, "densityFactor":F
    const/high16 v1, 0x42340000    # 45.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRadius:F

    .line 155
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;

    invoke-direct {v1, p3, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;F)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mClickedObjectFinder:Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mHoldObject:Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mHoldObject:Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/map/IMap;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMap:Lcom/parrot/freeflight/map/IMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->isTouchInteractionAllowed(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mClickedObjectFinder:Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRadius:F

    return v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # Lcom/parrot/engine3d/objects/GLObject3D;
    .param p2, "x2"    # Landroid/graphics/PointF;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onObjectClicked(Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/map/MapGLRenderingView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapWidth:I

    return p1
.end method

.method static synthetic access$1702(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapHeight:I

    return p1
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;ZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Point;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "x2"    # Landroid/graphics/Point;
    .param p3, "x3"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onMapClicked(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->removeWayPoint(IZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    return v0
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;II)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changePointLandingMode(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mEditingYaw:Z

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mEditingYaw:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mInitialTouchX:F

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mInitialTouchX:F

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mInitialTouchY:F

    return v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mInitialTouchY:F

    return p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOldYaw:F

    return v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOldPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOldPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    return-object v0
.end method

.method private addBucklingWayPointToPoi(I)V
    .locals 2
    .param p1, "poiIndex"    # I

    .prologue
    .line 807
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 808
    .local v0, "wayPointIndex":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1, v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->addWayPointToPoi(II)V

    .line 809
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1, v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addWayPointToPoi(II)V

    .line 810
    return-void
.end method

.method private addLinearLandingWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 12
    .param p1, "startLandingWayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 1066
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v9

    .line 1067
    .local v9, "startLandingWayPointIndex":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v3, v9}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v8

    .line 1068
    .local v8, "startLandingGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    add-int/lit8 v4, v9, -0x1

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v7

    .line 1070
    .local v7, "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1071
    invoke-direct {p0, v7, v8, v11}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->computeLinearLandingLatLng(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;I)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1072
    .local v1, "linearLandingEndLatLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 1073
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultSpeed()I

    move-result v3

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;-><init>(Lcom/google/android/gms/maps/model/LatLng;FIFLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 1074
    .local v0, "endLandingWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setIndex(I)V

    .line 1075
    invoke-virtual {v0, v11}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setEndLinearLanding(Z)V

    .line 1076
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v2, v0, v10}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)I

    .line 1077
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2, v0, v10}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)I

    .line 1079
    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setLandingLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1081
    .end local v0    # "endLandingWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v1    # "linearLandingEndLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void
.end method

.method private addWayPoint(ILcom/google/android/gms/maps/model/LatLng;ZZZ)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fromFileLoad"    # Z
    .param p4, "isSelected"    # Z
    .param p5, "continueMode"    # Z

    .prologue
    .line 518
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoints()Ljava/util/List;

    move-result-object v8

    .line 519
    .local v8, "glWayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;>;"
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 520
    .local v7, "futureListIndex":I
    :goto_0
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-direct {p0, v8, v7, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->getAltitudeForInsertAt(Ljava/util/List;ILcom/google/android/gms/maps/model/LatLng;)F

    move-result v2

    .line 521
    invoke-direct {p0, v8, v7}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->getSpeedForInsertAt(Ljava/util/List;I)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;-><init>(Lcom/google/android/gms/maps/model/LatLng;FIFLcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 522
    .local v0, "newWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v0, v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setIndex(I)V

    .line 523
    invoke-virtual {v0, p5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setContinueMode(Z)V

    .line 524
    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, p4, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;ZZZ)V

    .line 525
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->checkGeofenceAlert(ILcom/google/android/gms/maps/model/LatLng;)Z

    move-result v9

    .line 526
    .local v9, "onAlert":Z
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    invoke-interface {v1, v2, v9}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updateGeofenceAlert(IZ)V

    .line 527
    return-void

    .end local v0    # "newWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v7    # "futureListIndex":I
    .end local v9    # "onAlert":Z
    :cond_0
    move v7, p1

    .line 519
    goto :goto_0
.end method

.method private addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;ZZZ)V
    .locals 4
    .param p1, "newWayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fromFileLoad"    # Z
    .param p3, "isSelected"    # Z
    .param p4, "addToRecordList"    # Z

    .prologue
    const/4 v3, 0x1

    .line 530
    if-nez p2, :cond_0

    .line 531
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1, p1, p3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)I

    .line 533
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v0

    .line 534
    .local v0, "index":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1, p1, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)I

    .line 536
    if-nez p2, :cond_2

    .line 537
    if-eqz p4, :cond_1

    .line 538
    new-instance v1, Lcom/parrot/freeflight/flightplan/model/history/AddWayPointRecord;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    invoke-direct {v1, p1, v2}, Lcom/parrot/freeflight/flightplan/model/history/AddWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;)V

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 540
    :cond_1
    if-eqz p3, :cond_2

    .line 541
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1, v3, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectWayPoint(IZZ)V

    .line 545
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v1

    if-lez v1, :cond_4

    .line 547
    if-nez v0, :cond_3

    .line 548
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateWayPointGraphics(ILjava/lang/String;)V

    .line 551
    :cond_3
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->updateWayPointsIndexes(I)V

    .line 553
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v1, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updateLayerButtons(Z)V

    .line 554
    return-void
.end method

.method private changePointLandingMode(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;II)V
    .locals 5
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldLandingMode"    # I
    .param p3, "newLandingMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 1043
    if-nez p2, :cond_0

    .line 1044
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->removeLinearLandingEndWayPoint()V

    .line 1046
    :cond_0
    invoke-virtual {p1, p3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setLandingMode(I)V

    .line 1047
    if-nez p3, :cond_1

    .line 1048
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addLinearLandingWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 1051
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v1

    .line 1052
    .local v1, "wpIndex":I
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v0

    .line 1055
    .local v0, "wayPointAltitude":F
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateWayPointGraphics(ILjava/lang/String;)V

    .line 1057
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-interface {v2, v3, v1, v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeProgressBarValue(III)V

    .line 1058
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v2, -0x1

    if-ne p3, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v4, v2, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setSeekBarEnabled(ZZ)V

    .line 1060
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeObjectsPosition()V

    .line 1061
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 1062
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 1063
    return-void

    :cond_2
    move v2, v3

    .line 1058
    goto :goto_0
.end method

.method private computeLinearLandingLatLng(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;I)Lcom/google/android/gms/maps/model/LatLng;
    .locals 10
    .param p1, "wayPoint1"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wayPoint2"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "direction"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1085
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v6}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v4

    .line 1086
    .local v4, "mapProjection":Lcom/parrot/freeflight/map/IProjection;
    const/4 v6, 0x2

    new-array v1, v6, [F

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v6

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartX()F

    move-result v7

    sub-float/2addr v6, v7

    aput v6, v1, v8

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v6

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartY()F

    move-result v7

    sub-float/2addr v6, v7

    aput v6, v1, v9

    .line 1087
    .local v1, "landingDirVector":[F
    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/utils/Vector;->normalize([F)[F

    move-result-object v1

    .line 1088
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinRunWay()F

    move-result v6

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;->metersToScreenDistance(Lcom/parrot/freeflight/map/IProjection;FLcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 1089
    .local v0, "glMinRunWay":F
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v6

    aget v7, v1, v8

    mul-float/2addr v7, v0

    int-to-float v8, p3

    mul-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1090
    .local v2, "landingX":F
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v6

    aget v7, v1, v9

    mul-float/2addr v7, v0

    int-to-float v8, p3

    mul-float/2addr v7, v8

    add-float v3, v6, v7

    .line 1091
    .local v3, "landingY":F
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getUnitConverter()Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    move-result-object v5

    .line 1092
    .local v5, "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v5, v2}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToScreenSpace(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToScreenSpace(F)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v4, v6}, Lcom/parrot/freeflight/map/IProjection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    return-object v6
.end method

.method private getAltitudeForInsertAt(Ljava/util/List;ILcom/google/android/gms/maps/model/LatLng;)F
    .locals 11
    .param p2, "index"    # I
    .param p3, "newWPLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;",
            ">;I",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ")F"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, "glWayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    if-lez p2, :cond_1

    .line 840
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 842
    .local v8, "wayPointsSize":I
    if-ge p2, v8, :cond_0

    .line 843
    add-int/lit8 v9, p2, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 844
    .local v5, "prevGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v6

    .line 845
    .local v6, "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v7

    .line 847
    .local v7, "prevWayPointAltitude":F
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 848
    .local v2, "nextGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    .line 849
    .local v3, "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    .line 853
    .local v4, "nextWayPointAltitude":F
    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-static {v9, p3}, Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 854
    .local v0, "dist1":F
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-static {p3, v9}, Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v1

    .line 855
    .local v1, "dist2":F
    sub-float v9, v4, v7

    mul-float/2addr v9, v0

    add-float v10, v0, v1

    div-float/2addr v9, v10

    add-float/2addr v9, v7

    .line 859
    .end local v0    # "dist1":F
    .end local v1    # "dist2":F
    .end local v2    # "nextGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v3    # "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v4    # "nextWayPointAltitude":F
    .end local v5    # "prevGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v6    # "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v7    # "prevWayPointAltitude":F
    .end local v8    # "wayPointsSize":I
    :goto_0
    return v9

    .line 857
    .restart local v8    # "wayPointsSize":I
    :cond_0
    add-int/lit8 v9, v8, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v9

    goto :goto_0

    .line 859
    .end local v8    # "wayPointsSize":I
    :cond_1
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultAltitude()F

    move-result v9

    goto :goto_0
.end method

.method private getSpeedForInsertAt(Ljava/util/List;I)I
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, "glWayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 865
    .local v0, "nbWayPoints":I
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 866
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getFirstWpSpeed()I

    move-result v1

    .line 875
    :goto_0
    return v1

    .line 868
    :cond_1
    if-lez v0, :cond_3

    if-lez p2, :cond_3

    .line 869
    if-ge p2, v0, :cond_2

    .line 870
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v1

    goto :goto_0

    .line 871
    :cond_2
    const/4 v1, 0x1

    if-le p2, v1, :cond_3

    .line 872
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v1

    goto :goto_0

    .line 875
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultSpeed()I

    move-result v1

    goto :goto_0
.end method

.method private isTouchInteractionAllowed(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 336
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapWidth:I

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapInteractionPadding:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapHeight:I

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapInteractionBottomPadding:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapInteractionPadding:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapInteractionPadding:I

    mul-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapWidth:I

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapInteractionPadding:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveLinearLandingEndWayPoint(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V
    .locals 5
    .param p1, "linearLandingStart"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 444
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    .line 445
    .local v2, "linearLandingStartIndex":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 446
    .local v0, "linearLandingEnd":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v0, :cond_0

    .line 447
    const/4 v3, -0x1

    invoke-direct {p0, v0, p1, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->computeLinearLandingLatLng(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;I)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 448
    .local v1, "linearLandingEndLatLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setLandingLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 449
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 450
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 452
    .end local v1    # "linearLandingEndLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void
.end method

.method private moveLinearLandingStartWayPoint(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 5
    .param p1, "linearLandingEnd"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newLinearLandingEndLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v0

    .line 456
    .local v0, "linearLandingEndIndex":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPrevWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v1

    .line 457
    .local v1, "linearLandingStart":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setLandingLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 459
    const/4 v3, -0x1

    invoke-direct {p0, v1, p1, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->computeLinearLandingLatLng(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;I)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 460
    .local v2, "linearLandingStartLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 461
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 464
    .end local v2    # "linearLandingStartLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void
.end method

.method private onMapClicked(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Point;Z)Z
    .locals 5
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clickedPoint"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "longClick"    # Z

    .prologue
    .line 345
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->isTouchInteractionAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getUnitConverter()Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    move-result-object v1

    .line 347
    .local v1, "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mClickedObjectFinder:Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;

    iget v3, p2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToSceneSpace(F)F

    move-result v3

    iget v4, p2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;->find(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    move-result-object v0

    .line 349
    .local v0, "clickedObject":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->getObject3D()Lcom/parrot/engine3d/objects/GLObject3D;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->getClickedPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onObjectClicked(Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;ZZ)V

    .line 354
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 356
    .end local v0    # "clickedObject":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    .end local v1    # "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    :goto_1
    return v2

    .line 351
    .restart local v0    # "clickedObject":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    .restart local v1    # "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mHoldObject:Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->isEditionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onEmptySpaceClicked(Lcom/google/android/gms/maps/model/LatLng;IIZ)V

    goto :goto_0

    .line 356
    .end local v0    # "clickedObject":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    .end local v1    # "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onObjectClicked(Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;ZZ)V
    .locals 10
    .param p1, "object"    # Lcom/parrot/engine3d/objects/GLObject3D;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clickedPoint"    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fromLongPress"    # Z
    .param p4, "forceSelect"    # Z

    .prologue
    .line 360
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getUnitConverter()Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    move-result-object v9

    .line 361
    .local v9, "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    if-eqz v0, :cond_3

    move-object v1, p1

    .line 362
    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 363
    .local v1, "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mEditingYaw:Z

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOldYaw:F

    .line 365
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onYawEditionStarted(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 378
    .end local v1    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_0
    :goto_0
    return-void

    .line 367
    .restart local v1    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOldPosition:Lcom/google/android/gms/maps/model/LatLng;

    .line 368
    :cond_2
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9, v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToScreenSpace(F)F

    move-result v0

    float-to-int v2, v0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToScreenSpace(F)F

    move-result v0

    float-to-int v3, v0

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onWayPointSelected(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;IIZZ)V

    goto :goto_0

    .line 370
    .end local v1    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_3
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {v9, p2}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertToScreenSpace(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v8

    .local v8, "point":Landroid/graphics/Point;
    move-object v3, p1

    .line 372
    check-cast v3, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/parrot/freeflight/map/IProjection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget v5, v8, Landroid/graphics/Point;->x:I

    iget v6, v8, Landroid/graphics/Point;->y:I

    move-object v2, p0

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onLineSelected(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Lcom/google/android/gms/maps/model/LatLng;IIZ)V

    goto :goto_0

    .line 373
    .end local v8    # "point":Landroid/graphics/Point;
    :cond_4
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    if-eqz v0, :cond_0

    move-object v3, p1

    .line 374
    check-cast v3, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    .line 375
    .local v3, "poi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    if-nez p3, :cond_5

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOldPosition:Lcom/google/android/gms/maps/model/LatLng;

    .line 376
    :cond_5
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9, v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToScreenSpace(F)F

    move-result v0

    float-to-int v4, v0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToScreenSpace(F)F

    move-result v0

    float-to-int v5, v0

    move-object v2, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onPoiSelected(Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;IIZZ)V

    goto :goto_0
.end method

.method private releaseSelectedLine()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 758
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedLineIndex:I

    if-eq v0, v2, :cond_0

    .line 759
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setSpeedSeekBarEnabled(Z)V

    .line 760
    iput v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedLineIndex:I

    .line 762
    :cond_0
    return-void
.end method

.method private releaseSelectedPoi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 794
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->showPoiEditionEnded()V

    .line 796
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedPoiIndex:I

    if-ltz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedPoiIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->selectPoi(IZ)V

    .line 798
    iput v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedPoiIndex:I

    .line 800
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    if-ltz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->selectPoi(IZ)V

    .line 802
    iput v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    .line 804
    :cond_1
    return-void
.end method

.method private releaseSelectedWayPoint()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 685
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedWpIndex:I

    if-ltz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedWpIndex:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->selectWayPoint(IZZ)V

    .line 687
    iput v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedWpIndex:I

    .line 689
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    if-ltz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->selectWayPoint(IZZ)V

    .line 691
    iput v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeInformationObjects()V

    .line 695
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0, v2, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setSeekBarEnabled(ZZ)V

    .line 696
    return-void
.end method

.method private removeBucklingWayPointFromPoi(I)V
    .locals 2
    .param p1, "poiIndex"    # I

    .prologue
    .line 813
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 814
    .local v0, "wayPointIndex":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1, v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->removeWayPointFromPoi(II)V

    .line 815
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1, v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeWayPointFromPoi(II)V

    .line 816
    return-void
.end method

.method private removeLinearLandingEndWayPoint()V
    .locals 3

    .prologue
    .line 1096
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 1097
    .local v1, "lastWayPointIndex":I
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 1098
    .local v0, "lastWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1099
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->removeWayPoint(I)V

    .line 1100
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeWayPoint(I)V

    .line 1102
    :cond_0
    return-void
.end method

.method private removeWayPoint(IZ)V
    .locals 10
    .param p1, "wayPointIndex"    # I
    .param p2, "addToRecordList"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 562
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    .line 563
    .local v3, "removedWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-nez v3, :cond_0

    .line 616
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 569
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeWayPoint(I)V

    .line 570
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->removeWayPoint(I)V

    .line 573
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeWayPoint(I)V

    .line 574
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeInformationObjects()V

    .line 575
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->removeWayPoint(I)V

    .line 577
    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectWayPoint(I)V

    .line 579
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v1

    .line 582
    .local v1, "nbWayPoints":I
    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 583
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4, v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 584
    .local v0, "firstWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v0, :cond_2

    .line 585
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v4, v6, v9}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateWayPointGraphics(ILjava/lang/String;)V

    .line 590
    .end local v0    # "firstWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isBuckled()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 591
    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->unbuckle(Z)Z

    .line 602
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 603
    new-instance v4, Lcom/parrot/freeflight/flightplan/model/history/RemoveWayPointRecord;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    invoke-direct {v4, v3, v5}, Lcom/parrot/freeflight/flightplan/model/history/RemoveWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;)V

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 607
    :cond_4
    if-lez v1, :cond_5

    .line 608
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->updateWayPointsIndexes(I)V

    .line 610
    :cond_5
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeObjectsPosition()V

    .line 611
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v4, v8}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updateLayerButtons(Z)V

    .line 614
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v4, p1, v9}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->checkGeofenceAlert(ILcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    .line 615
    .local v2, "onAlert":Z
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v4, p1, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updateGeofenceAlert(IZ)V

    goto :goto_0

    .line 592
    .end local v2    # "onAlert":Z
    :cond_6
    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isBuckled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 593
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4, v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 595
    .restart local v0    # "firstWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 596
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addBucklingWayPointToPoi(I)V

    goto :goto_1

    .line 598
    :cond_7
    invoke-direct {p0, v7}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->removeBucklingWayPointFromPoi(I)V

    goto :goto_1
.end method

.method private showDistancesAround(I)V
    .locals 6
    .param p1, "wpIndex"    # I

    .prologue
    .line 699
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 700
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    .line 701
    .local v0, "nextGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPrevWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v2

    .line 703
    .local v2, "prevGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v4

    if-eqz v4, :cond_0

    .line 704
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    .line 706
    .local v3, "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v4

    if-eqz v4, :cond_0

    .line 707
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addDistanceBetween(II)V

    .line 710
    .end local v3    # "prevWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_0
    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 713
    .local v1, "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v4

    if-nez v4, :cond_1

    .line 714
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addDistanceBetween(II)V

    .line 718
    .end local v0    # "nextGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v1    # "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v2    # "prevGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_1
    return-void
.end method

.method private showEmptySpaceActionPopup(Lcom/google/android/gms/maps/model/LatLng;II)V
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "touchEventX"    # I
    .param p3, "touchEventY"    # I

    .prologue
    .line 1340
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpacePopupActionListenerImpl;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpacePopupActionListenerImpl;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isBuckled()Z

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;Z)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    .line 1341
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1342
    return-void
.end method

.method private showLineActionPopup(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Lcom/google/android/gms/maps/model/LatLng;II)V
    .locals 6
    .param p1, "clickedLine"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "touchEventX"    # I
    .param p4, "touchEventY"    # I

    .prologue
    .line 1335
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;

    invoke-direct {v2, p0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Lcom/google/android/gms/maps/model/LatLng;)V

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->isAssociatedToPoi()Z

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->isProgressiveCap()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ZZ)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    .line 1336
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1337
    return-void
.end method

.method private showPoiActionPopup(Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;II)V
    .locals 4
    .param p1, "clickedPoi"    # Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "touchEventX"    # I
    .param p3, "touchEventY"    # I

    .prologue
    .line 1330
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PoiPopupActionListenerImpl;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PoiPopupActionListenerImpl;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)V

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    .line 1331
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1332
    return-void
.end method

.method private showWayPointActionPopup(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;II)V
    .locals 10
    .param p1, "clickedGlWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "touchEventX"    # I
    .param p3, "touchEventY"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1303
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v2

    .line 1304
    .local v2, "nbWayPoints":I
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 1305
    .local v0, "clickedWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v4

    .line 1306
    .local v4, "wayPointIndex":I
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v3

    .line 1308
    .local v3, "planForFixedWing":Z
    if-eqz v3, :cond_6

    .line 1309
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1311
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v1

    .line 1312
    .local v1, "landingMode":I
    if-eqz v1, :cond_0

    add-int/lit8 v7, v2, -0x1

    if-eq v4, v7, :cond_1

    :cond_0
    if-nez v1, :cond_3

    add-int/lit8 v7, v2, -0x2

    if-ne v4, v7, :cond_3

    .line 1314
    :cond_1
    new-instance v5, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingPopupActionListenerImpl;

    invoke-direct {v8, p0, v4}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingPopupActionListenerImpl;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)V

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v9

    invoke-direct {v5, v7, v8, v9}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLandingPopupActionListener;I)V

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    .line 1324
    .end local v1    # "landingMode":I
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    if-eqz v5, :cond_2

    .line 1325
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-virtual {v5, v7, v6, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1327
    :cond_2
    return-void

    .line 1316
    .restart local v1    # "landingMode":I
    :cond_3
    new-instance v7, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;

    invoke-direct {v9, p0, v4}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)V

    if-eqz v4, :cond_4

    :goto_1
    invoke-direct {v7, v8, v9, v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;Z)V

    iput-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    .line 1319
    .end local v1    # "landingMode":I
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    goto :goto_0

    .line 1322
    :cond_6
    new-instance v7, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;

    invoke-direct {v9, p0, v4}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)V

    invoke-direct {v7, v8, v9, v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;Z)V

    iput-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mActionPopup:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;

    goto :goto_0
.end method

.method private updateWayPointsIndexes(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 619
    move v0, p1

    .local v0, "it":I
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v1

    .local v1, "nbWayPoints":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 620
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateWayPointIndex(I)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    :cond_0
    return-void
.end method


# virtual methods
.method public addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V
    .locals 2
    .param p1, "groupRecord"    # Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "record"    # Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1112
    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->addRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 1113
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->isUndoButtonEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setUndoButtonEnabled(Z)V

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->isRedoButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setRedoButtonEnabled(Z)V

    .line 1119
    :cond_1
    return-void
.end method

.method public addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V
    .locals 1
    .param p1, "record"    # Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    invoke-virtual {p0, v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 1109
    return-void
.end method

.method public addPoi(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 933
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultAltitude()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->createPoi(FLcom/google/android/gms/maps/model/LatLng;)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;ZZ)V

    .line 934
    return-void
.end method

.method public addPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;ZZ)V
    .locals 2
    .param p1, "newPoi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selectPoi"    # Z
    .param p3, "addToRecordList"    # Z

    .prologue
    .line 937
    if-eqz p3, :cond_0

    .line 938
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/AddPoiRecord;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    invoke-direct {v0, p1, v1}, Lcom/parrot/freeflight/flightplan/model/history/AddPoiRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->addPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Z)I

    .line 941
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addPoiToGraphics(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Z)V

    .line 942
    return-void
.end method

.method public addPoiToGraphics(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Z)V
    .locals 2
    .param p1, "newPoi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selectPoi"    # Z

    .prologue
    .line 945
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Z)I

    .line 946
    if-eqz p2, :cond_0

    .line 947
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectPoi(IZ)V

    .line 949
    :cond_0
    return-void
.end method

.method public buckle(Z)V
    .locals 13
    .param p1, "saveInHistory"    # Z

    .prologue
    const/4 v5, 0x0

    .line 879
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoints()Ljava/util/List;

    move-result-object v11

    .line 880
    .local v11, "glWayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 882
    .local v12, "nbWayPoints":I
    const/4 v1, 0x1

    if-le v12, v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isBuckled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 883
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v10

    .line 884
    .local v10, "firstWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v2

    .line 885
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v11, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->getSpeedForInsertAt(Ljava/util/List;I)I

    move-result v3

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v4

    .line 886
    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move v6, v5

    invoke-direct/range {v0 .. v9}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;-><init>(Lcom/google/android/gms/maps/model/LatLng;FIFIZLcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 888
    .local v0, "bucklingWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->buckle(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 889
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->buckle(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 890
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeWayPointAndSurroundingObjectsPositions(I)V

    .line 892
    if-eqz p1, :cond_0

    .line 893
    new-instance v1, Lcom/parrot/freeflight/flightplan/model/history/BuckleWayPointRecord;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    invoke-direct {v1, v0, v2}, Lcom/parrot/freeflight/flightplan/model/history/BuckleWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;)V

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 898
    .end local v0    # "bucklingWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v10    # "firstWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_1
    return-void
.end method

.method public changePoiAltitude(IF)V
    .locals 1
    .param p1, "poiIndex"    # I
    .param p2, "altitude"    # F

    .prologue
    .line 982
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->updatePoiAltitude(IF)V

    .line 985
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updatePoiAltitude(IF)V

    .line 986
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computePoiPosition(I)V

    .line 987
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 988
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 990
    :cond_0
    return-void
.end method

.method public changePointAltitude(IIF)V
    .locals 3
    .param p1, "pointType"    # I
    .param p2, "pointIndex"    # I
    .param p3, "altitude"    # F

    .prologue
    .line 963
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinAltitude()F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxAltitude()F

    move-result v2

    invoke-static {p3, v1, v2}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    .line 964
    .local v0, "limitedAltitude":F
    if-nez p1, :cond_1

    .line 965
    invoke-virtual {p0, p2, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changeWayPointAltitude(IF)V

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 967
    invoke-virtual {p0, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changePoiAltitude(IF)V

    goto :goto_0
.end method

.method public changePointHeightEnded(IIFF)V
    .locals 8
    .param p1, "pointType"    # I
    .param p2, "pointIndex"    # I
    .param p3, "oldAltitude"    # F
    .param p4, "newAltitude"    # F

    .prologue
    .line 993
    if-nez p1, :cond_1

    .line 994
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 995
    .local v1, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v1, :cond_0

    .line 996
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    sget-object v3, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_ALTITUDE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 1004
    .end local v1    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v3

    .line 1000
    .local v3, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    new-instance v2, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    sget-object v5, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_ALTITUDE:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    goto :goto_0
.end method

.method public changePointLandingMode(II)V
    .locals 7
    .param p1, "wpIndex"    # I
    .param p2, "newLandingMode"    # I

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 1032
    .local v1, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v1, :cond_0

    .line 1033
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v6

    .line 1034
    .local v6, "oldLandingMode":I
    if-eq p2, v6, :cond_0

    .line 1035
    invoke-direct {p0, v1, v6, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changePointLandingMode(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;II)V

    .line 1036
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    sget-object v3, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_LANDING_MODE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 1039
    .end local v6    # "oldLandingMode":I
    :cond_0
    return-void
.end method

.method public changeSelectedWayPointSpeed(I)V
    .locals 1
    .param p1, "speed"    # I

    .prologue
    .line 1007
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedLineIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    if-ltz v0, :cond_0

    .line 1008
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    invoke-virtual {p0, v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changeWayPointSpeed(II)V

    .line 1010
    :cond_0
    return-void
.end method

.method public changeSpeedEnded(II)V
    .locals 6
    .param p1, "oldSpeed"    # I
    .param p2, "newSpeed"    # I

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 1025
    .local v1, "selectedWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v1, :cond_0

    .line 1026
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    sget-object v3, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_SPEED:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 1028
    :cond_0
    return-void
.end method

.method public changeWayPointAltitude(IF)V
    .locals 1
    .param p1, "wpIndex"    # I
    .param p2, "altitude"    # F

    .prologue
    .line 972
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->updateWayPointAltitude(IF)V

    .line 974
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateWayPointAltitude(IF)V

    .line 975
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeWayPointAndSurroundingObjectsPositions(I)V

    .line 976
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 977
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 979
    :cond_0
    return-void
.end method

.method public changeWayPointSpeed(II)V
    .locals 1
    .param p1, "wpIndex"    # I
    .param p2, "speed"    # I

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->updateWayPointSpeed(II)V

    .line 1015
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    if-ne v0, p1, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateWayPointSpeed(II)V

    .line 1017
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 1021
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 190
    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedWpIndex:I

    .line 191
    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    .line 193
    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedPoiIndex:I

    .line 194
    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    .line 196
    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedLineIndex:I

    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->clear()V

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->clear()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .line 204
    :cond_0
    return-void
.end method

.method public getSelectedWayPointIndex()I
    .locals 1

    .prologue
    .line 1345
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    return v0
.end method

.method public insertWayPoint(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Lcom/google/android/gms/maps/model/LatLng;ZZ)V
    .locals 9
    .param p1, "line"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "fromFileLoad"    # Z
    .param p4, "isSelected"    # Z

    .prologue
    .line 510
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->findLineIndex(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)I

    move-result v6

    .line 511
    .local v6, "previousIndex":I
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoints()Ljava/util/List;

    move-result-object v8

    .line 512
    .local v8, "wayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;>;"
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 513
    .local v7, "previousWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isContinueMode()Z

    move-result v5

    .line 514
    .local v5, "continueMode":Z
    add-int/lit8 v1, v6, 0x1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addWayPoint(ILcom/google/android/gms/maps/model/LatLng;ZZZ)V

    .line 515
    return-void
.end method

.method public invalidatePoi()V
    .locals 1

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->releaseSelectedPoi()V

    .line 830
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->undo()V

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 836
    return-void
.end method

.method public onEmptySpaceClicked(Lcom/google/android/gms/maps/model/LatLng;IIZ)V
    .locals 10
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "touchEventX"    # I
    .param p3, "touchEventY"    # I
    .param p4, "fromLongPress"    # Z

    .prologue
    const/4 v1, -0x1

    .line 409
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    if-eq v0, v1, :cond_1

    .line 410
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->releaseSelectedPoi()V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    if-nez p4, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isBuckled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->hasFixedWingLanding()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoints()Ljava/util/List;

    move-result-object v9

    .line 413
    .local v9, "wayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 414
    .local v6, "futureListIndex":I
    const/4 v5, 0x0

    .line 415
    .local v5, "continueMode":Z
    const/4 v0, 0x2

    if-lt v6, v0, :cond_2

    .line 416
    add-int/lit8 v0, v6, -0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 417
    .local v7, "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    add-int/lit8 v0, v6, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 418
    .local v8, "previousWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isContinueMode()Z

    move-result v5

    .line 419
    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isContinueMode()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setContinueMode(Z)V

    .line 421
    .end local v7    # "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v8    # "previousWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addWayPoint(ILcom/google/android/gms/maps/model/LatLng;ZZZ)V

    .line 422
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    goto :goto_0

    .line 423
    .end local v5    # "continueMode":Z
    .end local v6    # "futureListIndex":I
    .end local v9    # "wayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;>;"
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->showEmptySpaceActionPopup(Lcom/google/android/gms/maps/model/LatLng;II)V

    goto :goto_0
.end method

.method public onLineSelected(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Lcom/google/android/gms/maps/model/LatLng;IIZ)V
    .locals 1
    .param p1, "line"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "touchEventX"    # I
    .param p4, "touchEventY"    # I
    .param p5, "fromLongPress"    # Z

    .prologue
    .line 399
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->getEndWayPoint()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    :cond_0
    invoke-virtual {p0, p1, p5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectLine(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Z)V

    .line 401
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 402
    if-eqz p5, :cond_1

    .line 403
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->showLineActionPopup(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Lcom/google/android/gms/maps/model/LatLng;II)V

    .line 406
    :cond_1
    return-void
.end method

.method public onPoiMoveStopped(Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 7
    .param p1, "glPoi"    # Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldPosition"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 481
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v1

    .line 482
    .local v1, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    if-eqz v0, :cond_0

    .line 483
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    sget-object v3, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_LATLON:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v6, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 485
    :cond_0
    return-void
.end method

.method public onPoiMoved(Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "glPoi"    # Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newPosition"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v0

    .line 473
    .local v0, "index":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1, v0, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPoiMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 474
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 476
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1, v0, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onPoiMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 477
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 478
    return-void
.end method

.method public onPoiSelected(Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;IIZZ)V
    .locals 2
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "touchEventX"    # I
    .param p3, "touchEventY"    # I
    .param p4, "fromLongPress"    # Z
    .param p5, "forceSelect"    # Z

    .prologue
    .line 390
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->isEditionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v1

    if-nez p5, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectPoi(IZ)V

    .line 392
    if-eqz p4, :cond_1

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->showPoiActionPopup(Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;II)V

    .line 396
    :cond_1
    return-void

    .line 391
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWayPointMoveStopped(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 6
    .param p1, "glWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldPosition"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 467
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 468
    .local v1, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    sget-object v3, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_LATLON:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 469
    return-void
.end method

.method public onWayPointMoved(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "glWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newPosition"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 429
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v0

    .line 430
    .local v0, "index":I
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v2, v0, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 431
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v2, v0, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 432
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 433
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->moveLinearLandingEndWayPoint(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 437
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 439
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->checkGeofenceAlert(ILcom/google/android/gms/maps/model/LatLng;)Z

    move-result v1

    .line 440
    .local v1, "onAlert":Z
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v2, v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updateGeofenceAlert(IZ)V

    .line 441
    return-void

    .line 434
    .end local v1    # "onAlert":Z
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->moveLinearLandingStartWayPoint(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public onWayPointSelected(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;IIZZ)V
    .locals 3
    .param p1, "glWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "touchEventX"    # I
    .param p3, "touchEventY"    # I
    .param p4, "fromLongPress"    # Z
    .param p5, "forceSelect"    # Z

    .prologue
    const/4 v1, 0x1

    .line 381
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    if-nez p5, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectWayPoint(IZZ)V

    .line 382
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 384
    if-eqz p4, :cond_1

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->showWayPointActionPopup(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;II)V

    .line 387
    :cond_1
    return-void

    .line 381
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onYawChanged(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;F)V
    .locals 2
    .param p1, "glWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "yaw"    # F

    .prologue
    .line 493
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v0

    .line 494
    .local v0, "index":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1, v0, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->updateYaw(IF)V

    .line 495
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1, v0, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateYaw(IF)V

    .line 496
    return-void
.end method

.method public onYawEditionStarted(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V
    .locals 2
    .param p1, "glWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 488
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectWayPoint(IZZ)V

    .line 489
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 490
    return-void
.end method

.method public onYawEditionStopped(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;F)V
    .locals 6
    .param p1, "glWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldYaw"    # F

    .prologue
    .line 499
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 500
    .local v1, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onYawEditStop(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 501
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateYaw(IF)V

    .line 502
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    sget-object v3, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_YAW:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 503
    return-void
.end method

.method public redo()V
    .locals 3

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->canRedo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .line 1128
    .local v0, "groupToRedo":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->redoOneStep()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setRedoButtonEnabled(Z)V

    .line 1129
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->canUndo()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setUndoButtonEnabled(Z)V

    .line 1130
    return-void

    .line 1126
    .end local v0    # "groupToRedo":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .restart local v0    # "groupToRedo":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
    goto :goto_0
.end method

.method public removePoi(IZ)V
    .locals 3
    .param p1, "poiIndex"    # I
    .param p2, "addToRecordList"    # Z

    .prologue
    .line 952
    if-eqz p2, :cond_0

    .line 953
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/RemovePoiRecord;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/RemovePoiRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->removePoi(I)V

    .line 957
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectPoi(IZ)V

    .line 958
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removePoi(I)V

    .line 959
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 960
    return-void
.end method

.method public removeWayPoint(I)V
    .locals 1
    .param p1, "wayPointIndex"    # I

    .prologue
    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->removeWayPoint(IZ)V

    .line 558
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 559
    return-void
.end method

.method public selectLine(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Z)V
    .locals 8
    .param p1, "line"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "forceSelection"    # Z

    .prologue
    .line 721
    iget v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    if-gez v5, :cond_3

    .line 722
    const/4 v1, 0x0

    .line 724
    .local v1, "newLineSelected":Z
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeInformationObjects()V

    .line 726
    if-eqz p1, :cond_2

    .line 727
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v5, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->findLineIndex(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)I

    move-result v0

    .line 729
    .local v0, "lineIndex":I
    iget v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedLineIndex:I

    if-ne v5, v0, :cond_0

    if-eqz p2, :cond_2

    .line 730
    :cond_0
    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedLineIndex:I

    .line 731
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectWayPoint(I)V

    .line 733
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setSeekBarEnabled(ZZ)V

    .line 735
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v5, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v2

    .line 736
    .local v2, "selectedGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    if-eqz v2, :cond_2

    .line 737
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    .line 738
    .local v3, "selectedWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v5

    iput v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    .line 739
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v5}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 740
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v4

    .line 741
    .local v4, "speed":I
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    invoke-virtual {v5, v0, v6, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addSpeedBetween(III)V

    .line 742
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    iget v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    invoke-interface {v5, v6, v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setSpeedProgressBarValue(II)V

    .line 746
    .end local v4    # "speed":I
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 751
    .end local v0    # "lineIndex":I
    .end local v2    # "selectedGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .end local v3    # "selectedWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    if-nez v1, :cond_3

    .line 752
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->releaseSelectedLine()V

    .line 755
    .end local v1    # "newLineSelected":Z
    :cond_3
    return-void

    .line 743
    .restart local v0    # "lineIndex":I
    .restart local v1    # "newLineSelected":Z
    .restart local v2    # "selectedGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .restart local v3    # "selectedWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_4
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v5

    if-nez v5, :cond_1

    .line 744
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    invoke-virtual {v5, v6, v7}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addDistanceBetween(II)V

    goto :goto_0
.end method

.method public selectPoi(IZ)V
    .locals 4
    .param p1, "poiIndex"    # I
    .param p2, "forceSelect"    # Z

    .prologue
    .line 765
    const-string v1, "FPMapActionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SelectPoi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->releaseSelectedWayPoint()V

    .line 768
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    .line 769
    .local v0, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_3

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    if-nez v1, :cond_1

    .line 771
    new-instance v1, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    invoke-direct {v1}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .line 774
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    iput v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedPoiIndex:I

    .line 775
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    .line 776
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedPoiIndex:I

    if-ltz v1, :cond_2

    .line 777
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedPoiIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->selectPoi(IZ)V

    .line 779
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->selectPoi(IZ)V

    .line 781
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->showPoiEditionStarted(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V

    .line 790
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 791
    return-void

    .line 783
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    if-eqz v1, :cond_4

    .line 784
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 785
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .line 788
    :cond_4
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->releaseSelectedPoi()V

    goto :goto_0
.end method

.method public selectWayPoint(I)V
    .locals 1
    .param p1, "wpIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 625
    invoke-virtual {p0, p1, v0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectWayPoint(IZZ)V

    .line 626
    return-void
.end method

.method public selectWayPoint(IZZ)V
    .locals 9
    .param p1, "wpIndex"    # I
    .param p2, "forceSelect"    # Z
    .param p3, "updateWayPointTexture"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 629
    if-ltz p1, :cond_8

    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    if-ne p1, v4, :cond_0

    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedLineIndex:I

    if-gez v4, :cond_0

    if-nez p2, :cond_0

    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    if-ltz v4, :cond_8

    .line 630
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 631
    .local v1, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-nez v1, :cond_1

    .line 682
    .end local v1    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :goto_0
    return-void

    .line 636
    .restart local v1    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_1
    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    if-ltz v4, :cond_4

    .line 637
    invoke-virtual {p0, v7, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectLine(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Z)V

    .line 638
    iput v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedWpIndex:I

    iput v6, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    .line 640
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    .line 643
    .local v2, "wpPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    if-ne v3, v4, :cond_3

    .line 644
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    new-instance v4, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    sget-object v6, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_POI:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 645
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    invoke-virtual {v3, p1, v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->removeWayPointFromPoi(II)V

    .line 646
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    invoke-virtual {v3, p1, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeWayPointFromPoi(II)V

    .line 647
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isBuckled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 648
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->removeBucklingWayPointFromPoi(I)V

    .line 681
    .end local v1    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v2    # "wpPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    goto :goto_0

    .line 652
    .restart local v1    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .restart local v2    # "wpPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    new-instance v4, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    sget-object v6, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_POI:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    iget v8, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    invoke-virtual {v7, v8}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v7

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 653
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    invoke-virtual {v3, p1, v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->addWayPointToPoi(II)V

    .line 654
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    invoke-virtual {v3, p1, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addWayPointToPoi(II)V

    .line 655
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isBuckled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 656
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedPoiIndex:I

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addBucklingWayPointToPoi(I)V

    goto :goto_1

    .line 660
    .end local v2    # "wpPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_4
    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    iput v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedWpIndex:I

    .line 661
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    .line 663
    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedWpIndex:I

    if-ltz v4, :cond_5

    .line 664
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPrevSelectedWpIndex:I

    invoke-virtual {v4, v5, v3, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->selectWayPoint(IZZ)V

    .line 667
    :cond_5
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    invoke-virtual {v4, v5, v0, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->selectWayPoint(IZZ)V

    .line 668
    invoke-virtual {p0, v7, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->selectLine(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Z)V

    .line 669
    iget v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mSelectedWpIndex:I

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->showDistancesAround(I)V

    .line 671
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface {v4, v3, p1, v5}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeProgressBarValue(III)V

    .line 674
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz p1, :cond_7

    .line 675
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v4

    if-ne v4, v6, :cond_7

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v4

    if-nez v4, :cond_7

    .line 676
    .local v0, "altitudeSeekBarEnabled":Z
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-interface {v4, v0, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setSeekBarEnabled(ZZ)V

    goto/16 :goto_1

    .end local v0    # "altitudeSeekBarEnabled":Z
    :cond_7
    move v0, v3

    .line 675
    goto :goto_2

    .line 679
    .end local v1    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_8
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->releaseSelectedWayPoint()V

    goto/16 :goto_1
.end method

.method public setConstantCap(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V
    .locals 7
    .param p1, "line"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 917
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1, v2, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateLineIntermediatePointsColor(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;[F[F)V

    .line 918
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->getStartWayPoint()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 919
    .local v1, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    sget-object v3, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_CONTINUE_MODE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 920
    invoke-virtual {v1, v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setContinueMode(Z)V

    .line 921
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 922
    return-void
.end method

.method public setPlanProductInfo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 0
    .param p1, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "planProductCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 184
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 185
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 186
    return-void
.end method

.method public setProgressiveCap(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V
    .locals 7
    .param p1, "line"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 925
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1, v2, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateLineIntermediatePointsColor(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;[F[F)V

    .line 926
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->getStartWayPoint()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 927
    .local v1, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    sget-object v3, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_CONTINUE_MODE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 928
    invoke-virtual {v1, v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setContinueMode(Z)V

    .line 929
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 930
    return-void
.end method

.method public showLineEditBox(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V
    .locals 6
    .param p1, "line"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1252
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v3, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->findLineIndex(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)I

    move-result v1

    .line 1253
    .local v1, "lineIndex":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move-result-object v2

    .line 1254
    .local v2, "nextGlWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnSpeedEditListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;I)V

    .line 1255
    .local v0, "editBox":Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->show()V

    .line 1256
    return-void
.end method

.method public showPoiEditBox(I)V
    .locals 6
    .param p1, "poiIndex"    # I

    .prologue
    .line 1242
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnAltitudeEditListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getAltitude()F

    move-result v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;IIF)V

    .line 1243
    .local v0, "editBox":Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->show()V

    .line 1244
    return-void
.end method

.method public showWayPointEditBox(I)V
    .locals 6
    .param p1, "wayPointIndex"    # I

    .prologue
    .line 1247
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnAltitudeEditListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v4, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;IIF)V

    .line 1248
    .local v0, "editBox":Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->show()V

    .line 1249
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->addOnMapClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;I)V

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapLongClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->addOnMapLongClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;I)V

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapScrollListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->addOnMapScrollListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;I)V

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapTouchDownListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->setOnMapTouchDownListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;)V

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapTouchUpListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->setOnMapTouchUpListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;)V

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapSizeChangedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->addSizeChangedListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;)V

    .line 165
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->releaseSelectedPoi()V

    .line 169
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->releaseSelectedWayPoint()V

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->removeOnMapClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapLongClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->removeOnMapLongClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapScrollListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->removeOnMapScrollListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;)V

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->setOnMapTouchDownListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;)V

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->setOnMapTouchUpListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;)V

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mOnMapSizeChangedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->removeSizeChangedListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;)V

    .line 176
    return-void
.end method

.method public unbuckle(Z)Z
    .locals 4
    .param p1, "saveInHistory"    # Z

    .prologue
    .line 901
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v0

    .line 903
    .local v0, "nbWayPoints":I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isBuckled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 904
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->unbuckle()V

    .line 905
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->unbuckle()V

    .line 906
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 908
    if-eqz p1, :cond_0

    .line 909
    new-instance v2, Lcom/parrot/freeflight/flightplan/model/history/UnbuckleWayPointRecord;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoints()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mDataCenter:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mWayPointRecordInterface:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    invoke-direct {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/model/history/UnbuckleWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;)V

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 911
    :cond_0
    const/4 v1, 0x1

    .line 913
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public undo()V
    .locals 3

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .line 1139
    .local v0, "groupToUndo":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->undoOneStep()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setUndoButtonEnabled(Z)V

    .line 1140
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;->canRedo()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setRedoButtonEnabled(Z)V

    .line 1141
    return-void

    .line 1137
    .end local v0    # "groupToUndo":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .restart local v0    # "groupToUndo":Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;
    goto :goto_0
.end method

.method public updateMapInteractionPadding(II)V
    .locals 0
    .param p1, "mapInteractionPadding"    # I
    .param p2, "mapInteractionBottomPadding"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapInteractionPadding:I

    .line 180
    iput p2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mMapInteractionBottomPadding:I

    .line 181
    return-void
.end method

.method public validatePoi()V
    .locals 1

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->releaseSelectedPoi()V

    .line 820
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mPoiEditionRecordList:Lcom/parrot/freeflight/flightplan/model/history/GroupRecord;

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 825
    return-void
.end method
