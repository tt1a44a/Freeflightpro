.class public Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;
.super Lcom/parrot/engine3d/objects/GLTextObject;
.source "GLInformationObject.java"


# static fields
.field private static final RECT_VERTICES:[F


# instance fields
.field private mWayPoint1:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWayPoint2:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->RECT_VERTICES:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40e66666    # -0.6f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40e66666    # -0.6f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f19999a    # 0.6f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/parrot/engine3d/GLShader;FLandroid/graphics/Bitmap;Lcom/parrot/engine3d/bitmaps/BitmapText;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V
    .locals 4
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scale"    # F
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "bitmapText"    # Lcom/parrot/engine3d/bitmaps/BitmapText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "wayPoint1"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "wayPoint2"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x4

    .line 29
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->RECT_VERTICES:[F

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parrot/engine3d/bitmaps/BitmapText;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-direct {p0, v0, p1, p3, v1}, Lcom/parrot/engine3d/objects/GLTextObject;-><init>([FLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)V

    .line 30
    iput-object p5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->mWayPoint1:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 31
    iput-object p6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->mWayPoint2:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 33
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->setScale(F)V

    .line 34
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->setFrontColor([F)V

    .line 35
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->setBackColor([F)V

    .line 36
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->computePosition()V

    .line 37
    return-void

    .line 34
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 35
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f400000    # 0.75f
    .end array-data
.end method


# virtual methods
.method public computePosition()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 50
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->mWayPoint1:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartX()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->mWayPoint2:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndX()F

    move-result v4

    add-float/2addr v3, v4

    div-float v0, v3, v5

    .line 51
    .local v0, "posX":F
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->mWayPoint1:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartY()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->mWayPoint2:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndY()F

    move-result v4

    add-float/2addr v3, v4

    div-float v1, v3, v5

    .line 52
    .local v1, "posY":F
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->mWayPoint1:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartZ()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->mWayPoint2:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndZ()F

    move-result v4

    add-float/2addr v3, v4

    div-float v2, v3, v5

    .line 53
    .local v2, "posZ":F
    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->setPosition(FFF)V

    .line 54
    return-void
.end method

.method public getWayPoint1()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->mWayPoint1:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    return-object v0
.end method

.method public getWayPoint2()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;->mWayPoint2:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    return-object v0
.end method
