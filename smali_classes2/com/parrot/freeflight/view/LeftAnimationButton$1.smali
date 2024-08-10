.class Lcom/parrot/freeflight/view/LeftAnimationButton$1;
.super Landroid/view/animation/Animation;
.source "LeftAnimationButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/view/LeftAnimationButton;->getTranslateAnimation(Landroid/view/View;II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/view/LeftAnimationButton;

.field final synthetic val$diff:I

.field final synthetic val$origMargin:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/view/LeftAnimationButton;Landroid/view/View;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/view/LeftAnimationButton;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/parrot/freeflight/view/LeftAnimationButton$1;->this$0:Lcom/parrot/freeflight/view/LeftAnimationButton;

    iput-object p2, p0, Lcom/parrot/freeflight/view/LeftAnimationButton$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/parrot/freeflight/view/LeftAnimationButton$1;->val$diff:I

    iput p4, p0, Lcom/parrot/freeflight/view/LeftAnimationButton$1;->val$origMargin:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/parrot/freeflight/view/LeftAnimationButton$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/parrot/freeflight/view/LeftAnimationButton$1;->val$diff:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/parrot/freeflight/view/LeftAnimationButton$1;->val$origMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 54
    iget-object v1, p0, Lcom/parrot/freeflight/view/LeftAnimationButton$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method
