.class public Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
.super Ljava/lang/Object;
.source "ClickedObject.java"


# instance fields
.field private final mClickedPoint:Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mObject3D:Lcom/parrot/engine3d/objects/GLObject3D;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPointToObjectDist:F


# direct methods
.method public constructor <init>(Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;F)V
    .locals 0
    .param p1, "object3D"    # Lcom/parrot/engine3d/objects/GLObject3D;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clickedPoint"    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "dist"    # F

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->mObject3D:Lcom/parrot/engine3d/objects/GLObject3D;

    .line 18
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->mClickedPoint:Landroid/graphics/PointF;

    .line 19
    iput p3, p0, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->mPointToObjectDist:F

    .line 20
    return-void
.end method


# virtual methods
.method public getClickedPoint()Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->mClickedPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getObject3D()Lcom/parrot/engine3d/objects/GLObject3D;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->mObject3D:Lcom/parrot/engine3d/objects/GLObject3D;

    return-object v0
.end method

.method public getPointToObjectDist()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->mPointToObjectDist:F

    return v0
.end method
