.class Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
.super Ljava/lang/Object;
.source "RunDetailsGraphicsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurvePoint"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;FF)V
    .locals 0
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 698
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput p2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    .line 700
    iput p3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    .line 701
    return-void
.end method


# virtual methods
.method public set(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 704
    iput p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    .line 705
    iput p2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    .line 706
    return-void
.end method

.method public set(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;)V
    .locals 1
    .param p1, "point"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 709
    iget v0, p1, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    .line 710
    iget v0, p1, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    .line 711
    return-void
.end method

.method public setMiddle(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;)V
    .locals 3
    .param p1, "from"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "to"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 714
    iget v0, p2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    iget v1, p1, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    .line 715
    iget v0, p2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    iget v1, p1, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    .line 716
    return-void
.end method
