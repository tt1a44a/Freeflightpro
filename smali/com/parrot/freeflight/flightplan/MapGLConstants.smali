.class public Lcom/parrot/freeflight/flightplan/MapGLConstants;
.super Ljava/lang/Object;
.source "MapGLConstants.java"


# static fields
.field public static final ARROW_SCALE_FACTOR:I = 0x2

.field public static final DRONE_SIZE:I = 0x12c

.field public static final EDITION_DISABLED_LOCK:I = 0x0

.field public static final EDITION_ENABLED:I = 0x1

.field public static final EDITION_ENABLED_UNLOCK:I = 0x3

.field public static final EDITION_UNLOCK:I = 0x2

.field public static final GL_BLACK_COLOR:[F

.field public static final GL_WHITE_COLOR:[F

.field public static final HOME_SIZE:I = 0x32

.field public static final INDEX_CIRCLE_RADIUS_RATIO:F = 2.5f

.field public static final INDEX_TEXT_COLOR:I = -0x1

.field public static final INFORMATION_OBJECT_SIZE:I = 0x50

.field public static final INTERMEDIATE_POINT_SIZE:I = 0x1e

.field public static final LAST_ITEM:I = -0x1

.field public static final LINE_SIZE:I = 0xa

.field public static final MINIFIED_DRONE_SIZE:I = 0x28

.field public static final MINIFIED_INTERMEDIATE_POINT_SIZE:I = 0xa

.field public static final MINIFIED_LINE_SIZE:I = 0x5

.field public static final MINIFIED_POINT_SIZE:I = 0x1e

.field public static final MIN_TILT:F = 5.0f

.field public static final NONE_SELECTED:I = -0x1

.field public static final OBJECT_TEXT_COLOR:I = -0x1000000

.field public static final POINT_SIZE:I = 0x5a

.field public static final PRODUCT_MAX_ALTITUDE:F = 150.0f

.field public static final PRODUCT_MAX_HORIZONTAL_SPEED:I = 0xa

.field public static final SELECTED_SCALE_FACTOR:F = 1.2f

.field public static final TAKEOFF_HEIGHT:F = 1.5f

.field public static final USER_SIZE:I = 0x2bc

.field public static final WAYPOINT_INDEX_POSITION_PERCENT_X:F = 0.8333f

.field public static final WAYPOINT_INDEX_POSITION_PERCENT_Y:F = 0.1765f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 45
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    .line 46
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_BLACK_COLOR:[F

    return-void

    .line 45
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
