.class public Lcom/parrot/freeflight/flightdirector/util/DrawHelper;
.super Ljava/lang/Object;
.source "DrawHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Landroid/content/res/Resources;FFFF)F
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 8
    sub-float v1, p1, p3

    .line 9
    .local v1, "dx":F
    sub-float v2, p2, p4

    .line 10
    .local v2, "dy":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 11
    .local v0, "distanceInPx":F
    invoke-static {p0, v0}, Lcom/parrot/freeflight/flightdirector/util/DrawHelper;->pxToDp(Landroid/content/res/Resources;F)F

    move-result v3

    return v3
.end method

.method private static pxToDp(Landroid/content/res/Resources;F)F
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "px"    # F

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    return v0
.end method
